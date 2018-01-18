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
    name = db.execute("SELECT pokemon.name FROM pokemon WHERE id = ?", id)
    type = db.execute("SELECT pokemon.type FROM pokemon WHERE id = ?", id)
    Pokemon.new(id, name, type, db)
  end
end
