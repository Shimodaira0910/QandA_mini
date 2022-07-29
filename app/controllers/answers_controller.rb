class AnswersController < ApplicationController
  # 回答の登録
  def create
    @question = Question.find(params[:question_id])
    @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end
  
  # 回答削除
  def destroy
  end
  
  private 
  def answer_params
    params.require(:answer).permit(:name, :content)
  end
end
