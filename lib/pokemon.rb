class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db
  end

  def self.save(name, type, db)
    pokemon = db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
    
  def self.find(id, db)
    attributes = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
<<<<<<< HEAD
    Pokemon.new(id: attributes[0], name: attributes[1], type: attributes[2], db: db)
=======
    Pokemon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], db: db)
>>>>>>> 9f7293a70f05fe6fb46feaca237b9eb93ec85088
  end
  
end