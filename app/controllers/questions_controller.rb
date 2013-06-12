class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def ask
    @random_question = Question.all.sample(1)
    @random_photo = Photo.all.sample(1)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params[:question])

    redirect_to(@question, notice: 'Question was successfully created.') if @question.save    
    render action: "new" unless @question.save 
  end

  def update

      if @question.update_attributes(params[:question])
        redirect_to(@question, notice: 'Question was successfully updated.') 
      else
        render action: "edit" 
      end
  end

  def destroy
    @question = Question.find(params[:id])

    @question.destroy
    redirect_to questions_url
  end
end
