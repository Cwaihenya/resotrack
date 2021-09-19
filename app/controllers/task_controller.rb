class TaskController < ApplicationController
  before_action :get_resolution
    before_action :set_task, only: %i[ show edit update destroy ]

    # GET /tasks or /tasks.json
    def index
      @tasks = @resolution.tasks
    end

    # GET /tasks/1 or /tasks/1.json
    def show
    end

    # GET /tasks/new
    def new
      @task = @resolution.tasks.build
    end

    # GET /tasks/1/edit
    def edit
    end

    # POST /tasks or /tasks.json
    def create
      @task = @resolution.tasks.build(task_params)

      respond_to do |format|
        if @task.save
          format.html { redirect_to resolution_tasks_url(@resolution), notice: "task was successfully created." }
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
          format.html { redirect_to resolution_tasks_url(@resolution), notice: "task was successfully updated." }
          format.json { render :show, status: :ok, location: @task }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @task.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /tasks/1 or /tasks/1.json
    def destroy
      @task.destroy
      respond_to do |format|
        format.html { redirect_to resolution_tasks_url(@resolution), notice: "task was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = @resolution.tasks.find(params[:id])
      end

      def get_resolution
        @resolution=Resolution.find(params[:resolution_id])
      end
      # Only allow a list of trusted parameters through.
      def task_params
        params.require(:task).permit(:name, :task_details, :frequency)
      end
  end
