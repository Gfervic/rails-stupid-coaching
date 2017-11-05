class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:query]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
