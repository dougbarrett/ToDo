class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to @task, :notice => "Successfully edited task."
    else
      render :action => "edit"
    end
  end
  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to @task, :notice => "Successfully created task."
    else
      render :action => "new"
    end
  end
  def destroy
    @task = Task.destroy(params[:id])
    redirect_to tasks_path
  end
end
