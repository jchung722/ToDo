require_relative "task"

class TaskList
    attr_reader :list

    def get_task_list
        Task.all
    end

    def get_task(id)
        Task.where(id: id).first
    end

    def create(title, description)
        Task.create(title: title, 
                    description: description, 
                    is_complete: false)
    end

    def complete(id)
        task = Task.where(id: id)
        task.update(is_complete: true)
    end

    def delete(id)
        Task.where(id: id).delete
    end
end