require 'sqlite3'

db = SQLite3::Database.new 'agenda.db'

db.execute 'CREATE TABLE IF NOT EXISTS Contatos(nome TEXT, numero TEXT)'
