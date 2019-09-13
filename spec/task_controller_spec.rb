require "task_controller"

RSpec.describe TaskController do
  let(:task) { double("task") }

  it 'gets all tasks' do
    expect(task).to receive(:all)
    TaskController.new(task).get_task_list
  end

  it 'creates a task' do
    expect(task).to receive(:create).with(title: "task", description: "description", is_complete: false)
    TaskController.new(task).create("task", "description")
  end

  it 'gets specified task by id' do
    expect(task).to receive_message_chain(:where, :first)
    TaskController.new(task).get_task(2)
  end

  it 'updates task to complete' do
    expect(task).to receive_message_chain(:where, :update).with(is_complete: true)
    TaskController.new(task).complete(2)
  end

  it 'deletes specified task' do
    expect(task).to receive_message_chain(:where, :delete)
    TaskController.new(task).delete(2)
  end
end
