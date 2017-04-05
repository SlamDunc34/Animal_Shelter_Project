require_relative( '../db/sql_runner' )
require('pry-byebug')

class Animal

  attr_reader( :name, :breed, :admission_date, :adoptable, :issues, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name']
    @breed = options['breed']
    @admission_date = options['admission_date']
    @adoptable = options['adoptable']
    @issues = options['issues']
  end

  def save()
    sql = "INSERT INTO animals (
      name, breed, admission_date, adoptable, issues
    ) VALUES (
      '#{ @name }','#{ @breed }','#{@admission_date}','#{@adoptable}','#{@issues}'
    ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM animals"
    results = SqlRunner.run( sql )
    return results.map { |hash| Animal.new( hash ) }
  end

  def self.adoptable()
    sql = "SELECT * FROM animals WHERE adoptable = 'true'"
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

  def update()
    sql = "UPDATE animals SET name = '#{@name}', breed = '#{breed}', admission_date = '#{admission_date}', adoptable = '#{@adoptable}', issues ='#{@issues}' WHERE id = #{@id}"
    results = SqlRunner.run(sql)
    #@id = results.first()['id'].to_i
  end

  # def adopted()
  #   @adoptable = 'false'
  #   update()
  # end

  # def abandon()
  #   @adoptable = 'true'
  #   update()
  # end

end
