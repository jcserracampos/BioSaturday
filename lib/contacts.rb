class Contacts
    require 'sqlite3'

    @db = SQLite3::Database.new 'agenda.db'

    @db.execute 'CREATE TABLE IF NOT EXISTS Contatos(nome TEXT, numero TEXT, empresa TEXT)'
    
    ContactStruct = Struct.new(:nome, :numero, :empresa)

    def save(name, phone, company)
        contato = ContactStruct.new(name, phone, company)
        
        @db.execute "INSERT INTO Contatos VALUES ('#{contato.nome}', '#{contato.numero}', '#{contato.empresa}');"
    end
end