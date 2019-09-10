require "task_controller"
require "sequel"
require "sequel_db"

RSpec.describe TaskController do
    it 'creates task in list' do
        expect(Task).to receive(:create).with(title: "task", description: "description", is_complete: false)
        TaskController.new.get_task(1)

    end
end