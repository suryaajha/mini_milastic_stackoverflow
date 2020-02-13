class HomeController < ApplicationController

  def index
    @questions = Question.all.includes(:user, :answers, :tags).order(id: :desc)
  end

end

# includes vs joins
#  Rendering home/index.html.erb within layouts/application
#   Question Load (0.4ms)  SELECT "questions".* FROM "questions" ORDER BY "questions"."id" DESC
#   ↳ app/views/shared/_questions.html.erb:1
#   Answer Load (0.4ms)  SELECT "answers".* FROM "answers" WHERE "answers"."question_id" IN ($1, $2, $3, $4, $5, $6)  [["question_id", 8], ["question_id", 7], ["question_id", 6], ["question_id", 5], ["question_id", 4], ["question_id", 3]]
#   ↳ app/views/shared/_questions.html.erb:1
#   Tagging Load (0.3ms)  SELECT "taggings".* FROM "taggings" WHERE "taggings"."question_id" IN ($1, $2, $3, $4, $5, $6)  [["question_id", 8], ["question_id", 7], ["question_id", 6], ["question_id", 5], ["question_id", 4], ["question_id", 3]]
#   ↳ app/views/shared/_questions.html.erb:1
#   Tag Load (0.4ms)  SELECT "tags".* FROM "tags" WHERE "tags"."id" IN ($1, $2, $3, $4, $5, $6)  [["id", 1], ["id", 4], ["id", 5], ["id", 6], ["id", 7], ["id", 8]]