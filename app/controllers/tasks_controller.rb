class TasksController < ApplicationController

  def index
  @tasks = Task.all
  @task = Task.new

  end

  def show          # GET /restaurants/:id
  @task = Task.find(params[:id])
  end

  def new           # GET /restaurants/new
  @task = Task.new
  end

  def create        # POST /restaurants
    task = Task.new
    task.title = params[:task][:title]
    task.details = params[:task][:details]
    task.completed = params[:task][:completed]
    task.save!

    if task.save
      redirect_to tasks_path
    else
      render:now
    end

  end

  def edit
    @task = Task.find(params[:id])
    @task = Task.new
  end

  def done
    @task = Task.find(params[:id])
  end

  def update
    if @task.update(task_params)
      redirect_to index_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end


end
