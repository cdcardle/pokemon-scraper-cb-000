class Pokemon
  attr_accessor :name, :type, :db
  def intialize(name, type, db)
    self.name = name
    self.type = type
  end

  def self.save
    database_connection.execute("INSERT INTO pokemon (name, type) VALES (?,?)", name, type)
  end
end
