require_relative "task"

class TaskList
    attr_reader :list

    def initialize
        @list = []
    end

    def get_task(index)
        @list[index]
    end

    def create(title, description)
        @list << Task.new(title, description)
    end

    def complete(index)
        @list[index].complete
    end

    def delete(index)
        @list.delete_at(index)
    end
end