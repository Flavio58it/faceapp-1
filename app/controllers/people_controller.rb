class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(params[:person])
    @person.save ? redirect_to(@person, notice: 'Person was successfully created.') : render(action: "new") 
  end

  def update
    @person = Person.find(params[:id])

    if @person.update_attributes(params[:person]) 
      redirect_to @person, notice: 'Person was successfully updated.'
    else  
      render action: "edit"
    end  
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_url 
  end

end
