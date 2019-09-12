require "./lib/sequel_db"

SequelDB.new("sqlite://development.db").create_schema

require "./lib/main"
require "./lib/console_io"

main = Main.new(ConsoleIO)
main.start