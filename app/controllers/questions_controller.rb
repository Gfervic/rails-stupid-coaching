class QuestionsController < ApplicationController
  def ask

  end

  def answer
  @question = params[:query]

  # coach_answer()

  end
end
