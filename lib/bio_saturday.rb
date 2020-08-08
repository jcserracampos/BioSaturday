require 'sqlite3'

db = SQLite3::Database.new 'agenda.db'

db.execute 'CREATE TABLE IF NOT EXISTS Contatos(nome TEXT, numero TEXT)'

Event = Struct.new(:nome, :numero)
contatos = []
contatos << Event.new('Rafael Veber de Carvalho', '998216244')
contatos << Event.new('Matheus Damasceno', '981265849')
contatos << Event.new('Julio Campos', '9963176727')
contatos.sort_by { |event| [event.numero, event.nome] }

contatos.each do |contato|
    db.execute "INSERT INTO Contatos VALUES ('#{contato.nome}', '#{contato.numero}');"
end
