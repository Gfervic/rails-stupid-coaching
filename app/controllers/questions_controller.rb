class QuestionsController < ApplicationController


  def ask
    puts "I am responding to the GET /questions/ask"

  end

  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end
end
