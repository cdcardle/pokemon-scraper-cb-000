class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id, name = nil, type = nil, db = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
    #name = db.execute("SELECT pokemon.name FROM pokemon WHERE id = ?", id)
    type = db.execute("SELECT pokemon.type FROM pokemon WHERE id = ?", id)
    Pokemon.new(id, pokemon.flatten, type[0][0], db)
  end
end
