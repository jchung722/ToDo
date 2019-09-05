class Task
    attr_reader :title, :description, :is_complete

    def initialize(title, description)
        @title = title
        @description = description
        @is_complete = false
    end

    def complete
        @is_complete = true
    end
    
end