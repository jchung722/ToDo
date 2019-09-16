require "./lib/sequel_db"

SequelDB.new("sqlite://development.db").create_schema

require "./lib/app.rb"
require "./lib/console_io"

app = App.new(ConsoleIO)
app.start
