class QuestionsController < ApplicationController
  before_action :set_question, only: %i[update destroy show edit] 

  def create
    question = Question.create(question_params)

    # flash[:notice] = 'Created successfully'

    redirect_to question_path(question), notice: 'Created successfully'
  end

  def update
    @question.update(question_params)

    redirect_to question_path(@question), notice: 'Uppdated successfully'
  end

  def destroy
    @question.destroy
    
    redirect_to questions_path, notice: 'Deleted successfully'
  end

  def show
  end

  def index
    @question = Question.new()
    @questions = Question.all
  end

  def new
    @question = Question.new()
  end

  def edit
  end

  def hello_world
    puts 'hello world'
  end

  private
  def question_params
    params.require(:question).permit(:body, :user_id)
  end

  private
  def set_question
    @question = Question.find_by(id: params[:id])
  end

end
