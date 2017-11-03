class QuestionsController < ApplicationController
  def ask

  end

  def answer
  @question = params[:query]
  @answer = coach_answer(@question)
  end
end
