class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  before_action :set_dashboard, only: %i[ index new create edit update destroy ]
  before_action :authenticate_user!

  # GET /tasks or /tasks.json
  def index
    @dashboard = Dashboard.find(params[:dashboard_id])
    @task = @dashboard.task
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = @dashboard.task.build
  end

  # GET /tasks/1/edit
  def edit
  end

  def create
    @task = @dashboard.task.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to dashboard_task_path(@dashboard, @task), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to dashboard_task_path(@dashboard, @task), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy!
    respond_to do |format|
      format.html { redirect_to dashboard_tasks_path(@dashboard), notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_dashboard
    @dashboard = Dashboard.find(params[:dashboard_id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :check, :tracker_check, :end_date, :dashboard_id)
  end
end