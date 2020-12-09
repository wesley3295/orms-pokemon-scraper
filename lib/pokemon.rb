class Pokemon
attr_accessor :id, :name, :type, :db

def initialize (id:, name:, type:, db:)
    @id=id
    @name=name
    @type=type
    @db=db
   
end

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?)",name,type)
end

def self.find(id, db)
row = db.execute("SELECT * FROM pokemon WHERE id = ?",id).flatten
Pokemon.new(id:row[0],name: row[1],type:row[2],db:db)
# (sql, name ,type).map do |row| self.new_from_db(row) end.first)
end
    


    
end
# pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [id])
# new_pokemon = self.new(pokemon)
# new_pokemon.id = pokemon[0][0]
# new_pokemon.name = pokemon[0][1]
# new_pokemon.type = pokemon[0][2]
# new_pokemon
    


    



    


    

 

 

 


    


 
 
 

 

    


    
    
    




    


    


    




