require_relative "task"
require_relative "task_list"
require_relative "io"

class Main

    def initialize(io)
        @io = io
    end

    def start
        tasks = TaskList.new

        while true
            puts "Your List:"
            @io.print_list(tasks.get_task_list)
            print "Select an Action (create, complete, show, delete, exit): "

            case @io.get
                when "create"
                    print "Title: "
                    title = @io.get
                    print "Description: "
                    description = @io.get

                    tasks.create(title, description)
                when "complete"
                    tasks.complete(@io.get_task_id)
                when "show"
                    task = tasks.get_task(@io.get_task_id)
                    @io.print_task(task)
                when "delete"
                    tasks.delete(@io.get_task_id)
                when "exit"
                    break
                else
                    puts "invalid input"
            end
        end
    end
end

main = Main.new(IO)
main.start