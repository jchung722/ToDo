require "sequel"

module Database
    DB = Sequel.connect("sqlite://development.db")
    
    unless DB.table_exists?(:tasks)
        DB.create_table :tasks do 
            primary_key :id
            String :title
            String :description
            Boolean :is_complete
        end
    end
end