require 'sqlite3'

db = SQLite3::Database.new 'agenda.db'

db.execute 'CREATE TABLE IF NOT EXISTS Contatos(nome TEXT, numero TEXT)'




puts 'Digite seu nome'
nome = gets.chomp

puts "Olá #{nome}, digite seu numero de telefone"
numero = gets.chomp


Contacts = Struct.new(:nome, :numero)
contatos = []
contatos << Contacts.new(nome, numero)
contatos.sort_by { |contact| [contact.numero, contact.nome] }
db.execute "INSERT INTO Contatos VALUES ('#{contatos[0].nome}', '#{contatos[0].numero}');"

