require "./lib/sequel_db"

SequelDB.new("sqlite://development.db").create_schema

require "./lib/main"

main = Main.new(IO)
main.start