require "task"

RSpec.describe Task do
    describe 'complete' do
      it 'marks the task as complete' do
        task = Task.new("test", "description")

        task.complete

        expect(task.is_complete).to eq(true)
      end
    end
end