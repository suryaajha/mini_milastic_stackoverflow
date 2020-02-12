class AnswersController < ApplicationController
  def create
    answer = Answer.new(answers_params)
    answer.user_id = current_user.id
    if answer.save
      flash[:notice] = 'Your Answer posted successfully!'
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = 'Something went wrong. Please enter correct format!'
      redirect_to new_question_path
    end
  end

  private

  def answers_params
    params.permit(:description, :votes, :question_id)
  end
end
