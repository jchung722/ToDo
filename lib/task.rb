require "sequel"
require_relative "Database"

class Task < Sequel::Model(:tasks)
end