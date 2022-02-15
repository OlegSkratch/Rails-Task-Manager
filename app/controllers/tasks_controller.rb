class TasksController < ApplicationController
  before action :set_task, only: [show, update, edit, destroy]
  def index
    @task = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params)
    @task.save
    redirect_to task_path(@path)
  end

  def edit
  end

  def destroy
    @task.destroy
    redirect_to task_path(@path)
  end

  def update
    @task.update
    redirect_to task_path(@path)
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
