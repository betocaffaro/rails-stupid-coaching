class QuestionsController < ApplicationController

  def coach_answer(your_message)
    if your_message == 'I am going to work'
      'Great!'
    elsif your_message.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end

  def answer
    @answer = coach_answer(params[:question])
  end
end
