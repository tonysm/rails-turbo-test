class TasksController < ApplicationController
    before_action :set_task_list, only: %i[ new create ]

    def new
        @task = @task_list.tasks.new
    end

    def create
        @task = @task_list.tasks.create!(task_params)

        respond_to do |format|
            format.html { redirect_to @task_list }
        end
    end

    private
        def set_task_list
            @task_list = TaskList.find(params[:task_list_id])
        end

        def task_params
            params.require(:task).permit(:content)
        end
end