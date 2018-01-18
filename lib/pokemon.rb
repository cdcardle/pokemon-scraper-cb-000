class Pokemon
  attr_accessor :name, :type, :db

  def self.save
    database_connection.execute("INSERT INTO pokemon (name, type) VALES (?,?)", name, type)
  end
end
