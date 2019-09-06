require "sequel"
require_relative "sequel_db"

SequelDB.new("sqlite://development.db").create_schema

class Task < Sequel::Model(:tasks)
    plugin :validation_helpers
    def validate
        super
        validates_presence [:title, :is_complete]
        validates_unique :title
    end
end