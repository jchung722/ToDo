require "task"

RSpec.describe Task do
    describe 'validations', type: :model do
        it { is_expected.to validate_presence :title }
        it { is_expected.to validate_presence :is_complete }
        it { is_expected.to validate_unique :title }
    end
end