# Invocando as dependências
require_relative 'Contacts'

puts 'Digite seu nome'
nome = gets.chomp

puts "Olá #{nome}, digite seu numero de telefone"
numero = gets.chomp

puts "Para qual empresa trabalha?"
empresa = gets.chomp

contact = Contacts.new

contact.save(nome, numero, empresa)
