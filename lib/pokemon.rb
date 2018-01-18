class Pokemon
  attr_accessor :name, :type, :db, :id

  def intialize(name, type, db)
    self.name = name
    self.type = type
    self.db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALES (?,?)", name, type)
  end
end
