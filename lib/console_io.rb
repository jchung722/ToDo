class ConsoleIO
  def self.get_task_id
    print "Which task? "
    gets.chomp.to_i
  end

  def self.get(prompt)
    print "#{prompt}: "
    gets.chomp
  end

  def self.print_task(task)
    begin
      puts "Title: #{task.title}"
      puts "Description: #{task.description}"
      puts "Complete: #{task.is_complete}"
    rescue => e
      puts e.message
    end
  end

  def self.print_list(list)
    puts "Your List:"
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

  def self.print_invalid_input
    puts "invalid input"
  end
end
