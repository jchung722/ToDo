class IO
    def self.get_task_index
        print "Which task? "
        gets.chomp.to_i - 1
    end

    def self.get
        gets.chomp
    end

    def self.print_task(task)
        puts "Title: #{task.title}"
        puts "Description: #{task.description}"
        puts "Complete: #{task.is_complete}"
    end

    def self.print_list(list)
        i = 1
        list.each do |task|
            mark = "[ ]"
            if task.is_complete
                mark = "[X]"
            end
            puts "#{mark}#{i}. #{task.title}"
            i += 1
        end
    end
end