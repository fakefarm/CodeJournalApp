class QuestionsController < ApplicationController

  # before_filter :require_login, :only => [:index, :new, :create]

  def index
    @questions = current_user.questions
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build(params[:question])

    redirect_to '/questions' if @question.save
  end

  def edit
    @question = Question.find(params[:id])
  end

  def show
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
     redirect_to @question, notice: "Question was successfully updated."
    else
      render action: "edit"
    end
  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to '/questions'
  end

end