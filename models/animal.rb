require_relative( '../db/sql_runner' )

class Animal

  attr_reader( :name, :species, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name']
    @species = options['species']
  end

  def save()
    sql = "INSERT INTO animals (
      name, species
    ) VALUES (
      '#{ @name }','#{ @species }'
    ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM animals"
    results = SqlRunner.run( sql )
    return results.map { |hash| Animal.new( hash ) }
  end

  def self.find( id )
    sql = "SELECT * FROM animals WHERE id=#{id}"
    results = SqlRunner.run( sql )
    return Animal.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM animals"
    SqlRunner.run( sql )
  end

end
