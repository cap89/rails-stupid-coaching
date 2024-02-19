class AnswersController < ApplicationController

  def answer
    @question = params[:answer]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    question_downcase = question.downcase
    if question_downcase == 'i am going to work'
      'Great!'
    elsif question_downcase.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
