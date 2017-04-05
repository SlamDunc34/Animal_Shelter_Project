require_relative( '../db/sql_runner' )

class Owner

  attr_reader( :name, :address, :details, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name']
    @address = options['address']
    @details = options['details']
  end

  def save()
    sql = "INSERT INTO owners (
      name, address, details
    ) VALUES (
      '#{ @name }','#{ @address}','#{ @details}'
      ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM owners"
    results = SqlRunner.run( sql )
    return results.map { |hash| Owner.new( hash ) }
  end

  def self.find( id )
    sql = "SELECT * FROM owners WHERE id=#{id}"
    results = SqlRunner.run( sql )
    return Owner.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM owners"
    SqlRunner.run( sql )
  end

end
