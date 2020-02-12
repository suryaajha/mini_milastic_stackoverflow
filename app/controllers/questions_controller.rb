class QuestionsController < ApplicationController

  def new
  end

  def create
    question = Question.new(question_params)
    question.user_id = current_user.id
    if question.save
      flash[:notice] = 'Your Question posted successfully!'
      redirect_to question
    else
      flash[:alert] = 'Something went wrong. Please enter correct format!'
      redirect_to new_question_path
    end
  end

  def show
    @question = Question.find(params[:id])
  end


  private

  def question_params
    params.permit(:title, :description, :tags)
  end
end
