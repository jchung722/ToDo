require "sequel"
require_relative "Database"

class Task < Sequel::Model(:tasks)
    plugin :validation_helpers
    def validate
        super
        validates_presence [:title, :is_complete]
        validates_unique :title
    end
end