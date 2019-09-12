class TaskController

    def initialize(task)
        @task = task
    end

    def get_task_list
        @task.all
    end

    def get_task(id)
        @task.where(id: id).first
    end

    def create(title, description)
        @task.create(title: title, 
                    description: description, 
                    is_complete: false)
    end

    def complete(id)
        @task.where(id: id).update(is_complete: true)
    end

    def delete(id)
        @task.where(id: id).delete
    end
end