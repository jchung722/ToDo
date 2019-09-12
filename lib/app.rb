require_relative "task_controller"
require_relative "task"

class App

    def initialize(io)
        @io = io
        @tasks = TaskController.new(Task)
    end

    def start
        while true
            @io.print_list(@tasks.get_task_list)
            case @io.get("Select an Action (create, complete, show, delete, exit)")
            when "create"
                create_task
            when "complete"
                complete_task
            when "show"
                show_task
            when "delete"
                delete_task
            when "exit"
                break
            else
                @io.print_invalid_input
            end
        end
    end

    private

    def create_task
        title = @io.get("Title")
        description = @io.get("Description: ")
        @tasks.create(title, description)
    end

    def complete_task
        @tasks.complete(@io.get_task_id)
    end

    def show_task
        task = @tasks.get_task(@io.get_task_id)
        @io.print_task(task)
    end

    def delete_task
        @tasks.delete(@io.get_task_id)
    end
end