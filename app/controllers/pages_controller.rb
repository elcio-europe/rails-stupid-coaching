class PagesController < ApplicationController
  def answer
    @answer = coach_answer(params[:query])
  end

  def ask
    @query = params[:query]
  end

  def coach_answer(your_message)
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message.include? "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    your_message.to_s
    if (your_message == your_message.upcase) && (your_message.include? "?")
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message.include? "I AM GOING TO WORK RIGHT NOW!"
      return ""
    else
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end



end
