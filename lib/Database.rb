require "sequel"

module Database
    SEQUEL = Sequel.sqlite

    SEQUEL.create_table :tasks do 
        primary_key :id
        String :title
        String :description
        Boolean :is_complete
    end
end