class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json

  has_scope :p
  
  def index
    @photos = apply_scopes(Photo).all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(params[:photo])

      if @photo.save
        redirect_to @photo, notice: 'Photo was successfully created.' 
      else
        render action: "new" 
      end
  end

  def update
    @photo = Photo.find(params[:id])

      if @photo.update_attributes(params[:photo])
        redirect_to @photo, notice: 'Successfully upodated' }
      else
        render action: "edit" 
      end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end
end
