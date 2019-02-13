require_relative('../db/sql_runner')
require_relative('booking')
require_relative('session')

class Member
  attr_accessor :first_name, :second_name, :address
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @second_name = options['second_name']
    @address = options['address']
  end

  def pretty_name()
    return "#{first_name} #{second_name}"
  end

  def save ()
    sql = 'INSERT INTO members (first_name, second_name, address)
    VALUES ($1, $2, $3) RETURNING id'
    values = [@first_name,@second_name,@address]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def update ()
    sql = 'UPDATE members SET(first_name, second_name, address)
    = ($1, $2, $3) WHERE id = $4'
    values = [@first_name,@second_name,@address,@id]
    SqlRunner.run(sql, values)
  end

  def delete ()
    sql = 'DELETE FROM members WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def sessions()
    sql = 'SELECT sessions.* FROM sessions
    INNER JOIN bookings
    ON sessions.id = bookings.session_id
    WHERE member_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map {|session| Session.new(session)}
  end

  def name_of_sessions  
  end
  def self.delete_all()
    sql = 'DELETE FROM members'
    values = []
    SqlRunner.run(sql, values)
  end

  def self.all
    sql = 'SELECT * FROM members'
    result = SqlRunner.run(sql)
    return result.map{|member| Member.new(member)}
  end

  def self.find (id)
    sql = 'SELECT * FROM members WHERE id = $1'
    values = [id]
    results = SqlRunner.run(sql, values)
    return Member.new(results.first)
  end
end
