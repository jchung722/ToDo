require "sequel"

class SequelDB
  def initialize(database)
    @db = Sequel.connect(database)
  end

  def create_schema
    unless @db.table_exists?(:tasks)
      @db.create_table :tasks do
        primary_key :id
        String :title
        String :description
        Boolean :is_complete
      end
    end
  end
end
