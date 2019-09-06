class IO
    def self.get_task_id
        print "Which task? "
        gets.chomp.to_i
    end

    def self.get
        gets.chomp
    end

    def self.print_task(task)
        if task == nil
            puts "This task does not exist."
        else
            puts "Title: #{task.title}"
            puts "Description: #{task.description}"
            puts "Complete: #{task.is_complete}"
        end
    end

    def self.print_list(list)
        i = 1
        list.each do |task|
            mark = "[ ]"
            if task.is_complete
                mark = "[X]"
            end
            puts "#{mark}#{task.id}. #{task.title}"
            i += 1
        end
    end
end