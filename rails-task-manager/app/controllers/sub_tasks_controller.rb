class SubTasksController < ApplicationController
  def index
    @sub_tasks = SubTask.all
  end
  def show
    @sub_task = SubTask.find(params[:id])
  end
  def new
    @sub_task = SubTask.new

  end
  def create
    @sub_task = SubTask.new(update_params)
    @sub_task.save
    redirect_to action: "index"

  end
  def edit
    @sub_task = SubTask.find(params[:id])
  end

  def destroy
    find_by_id
    @sub_task.destroy
    redirect_to action: "index"
  end

  def update
    find_by_id
    @sub_task.update(update_params)
    redirect_to action: "index"
  end



  private
  def find_by_id
    @sub_task = SubTask.find(params[:id])
  end
  def update_params
    params.require(:sub_task).permit(:description)
  end

end
