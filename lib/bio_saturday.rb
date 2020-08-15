# Invocando as dependências
require 'sqlite3'

# Criando o banco de dados e a tabela
@db = SQLite3::Database.new 'agenda.db'

@db.execute 'CREATE TABLE IF NOT EXISTS Contatos(nome TEXT, numero TEXT, empresa TEXT)'

Contacts = Struct.new(:nome, :numero, :empresa)

# Declarar as funções
def insert_contact(name, phone, company)
    contato = Contacts.new(name, phone, company)
    
    @db.execute "INSERT INTO Contatos VALUES ('#{contato.nome}', '#{contato.numero}', '#{contato.empresa}');"
end

puts 'Digite seu nome'
nome = gets.chomp

puts "Olá #{nome}, digite seu numero de telefone"
numero = gets.chomp

puts "Para qual empresa trabalha?"
empresa = gets.chomp

insert_contact(nome, numero, empresa)
