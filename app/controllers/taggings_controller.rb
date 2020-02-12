class TaggingsController < ApplicationController

  def show
    tag = Tag.find_by(name: params[:tag])
    @questions = tag.nil? ? [] : tag.questions
  end

end
