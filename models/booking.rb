require_relative('../db/sql_runner')
require_relative('member')
require_relative('session')

class Booking

  attr_reader :id, :member_id, :session_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @member_id = options['member_id'].to_i
    @session_id = options['session_id'].to_i
  end

  def save()
    sql = 'INSERT INTO bookings (member_id, session_id)
    VALUES ($1, $2) RETURNING id'
    values = [@member_id, @session_id]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def member()
    sql = 'SELECT * FROM members WHERE id = $1'
    values = [@member_id]
    result = SqlRunner.run(sql, values).first
    return Member.new(result)
  end

  def session()
    sql = 'SELECT * FROM sessions WHERE id = $1'
    values = [@session_id]
    result = SqlRunner.run(sql, values).first
    return Session.new(result)
  end

  def delete ()
    sql = 'DELETE FROM bookings WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all
    sql = 'SELECT * FROM bookings'
    result = SqlRunner.run(sql)
    return result.map{|booking| Booking.new(booking)}
  end

  def self.find (id)
    sql = 'SELECT * FROM bookings WHERE id = $1'
    values = [id]
    results = SqlRunner.run(sql, values)
    return Booking.new(results.first)
  end

  def self.delete_all()
    sql = 'DELETE FROM bookings'
    values = []
    SqlRunner.run(sql, values)
  end


end
