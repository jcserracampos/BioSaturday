require 'sqlite3'

db = SQLite3::Database.new 'agenda.db'

db.execute 'CREATE TABLE IF NOT EXISTS Contatos(nome TEXT, numero TEXT, empresa TEXT)'




puts 'Digite seu nome'
nome = gets.chomp

puts "Olá #{nome}, digite seu numero de telefone"
numero = gets.chomp

puts "Para qual empresa trabalha?"
empresa = gets.chomp


Contacts = Struct.new(:nome, :numero, :empresa)
contatos = []
contatos << Contacts.new(nome, numero, empresa)
contatos.sort_by { |contact| [contact.numero, contact.nome, contact.empresa] }

db.execute "INSERT INTO Contatos VALUES ('#{contatos[0].nome}', '#{contatos[0].numero}', '#{contatos[0].empresa}');"


 
