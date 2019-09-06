require "task_controller"
require "sequel"

RSpec.describe TaskList do
    # it 'creates task in list' do
    #     tasks = TaskList.new
    #     tasks.create("task", "description")

    #     expect(tasks.get_task(1).title).to eq("task")
    #     expect(tasks.get_task(1).description).to eq("description")
    #     expect(tasks.get_task(1).is_complete).to eq(false)
    # end

    # it 'completes specified task in list' do
    #     tasks = TaskList.new
    #     tasks.create("task1", "description")

    #     tasks.complete(1)
        
    #     expect(tasks.get_task(1).is_complete).to eq(true)
    # end

    # it 'deletes specified task in list' do
    #     tasks = TaskList.new
    #     tasks.create("task1", "description")
    #     tasks.create("task2", "description")

    #     tasks.delete(1)

    #     tasks.list.each do |task|
    #         expect(task.title).not_to eq("task1")
    #     end
    # end
end