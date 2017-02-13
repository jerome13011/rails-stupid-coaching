class CoachingController < ApplicationController
 def answer
   @question = params[:question]
 end
 def ask
    @question = params[:query]
    if @question.empty?
     @answer = "You need to type a question."
   elsif @question.end_with?("?")
     @answer = "Silly question son.."
   else
     @answer = "I don't care my boy!"
   end
  end
end
