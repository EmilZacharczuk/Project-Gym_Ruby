require_relative('../db/sql_runner')
require_relative('booking')
require_relative('member')

class Session

  attr_accessor :title, :instructor, :day, :start_time, :capacity
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @instructor = options['instructor']
    @day = options['day']
    @start_time = options['start_time']
    @capacity = options['capacity'].to_i
  end

  def save()
    sql = 'INSERT INTO sessions (title, instructor, day, start_time, capacity)
    VALUES ($1, $2, $3, $4, $5) RETURNING id'
    values = [@title, @instructor, @day, @start_time, @capacity]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def update()
    sql = 'UPDATE sessions SET (title, instructor, day, start_time, capacity)
    = ($1, $2, $3, $4, $5) WHERE id = $6'
    values = [@title, @instructor, @day, @start_time, @capacity, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = 'DELETE FROM sessions WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def members()
    sql = 'SELECT members.* FROM members
    INNER JOIN bookings
    ON members.id = bookings.member_id
    WHERE session_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map{|member| Member.new(member)}
  end

  def spare_capacity()
    return @capacity -= self.members.length
  end

  def self.delete_all()
    sql = 'DELETE FROM sessions'
    values = []
    SqlRunner.run(sql,values)
  end

  def self.all()
    sql = 'SELECT * FROM sessions'
    result = SqlRunner.run(sql)
    return result.map {|session| Session.new(session)}
  end

  def self.find (id)
    sql = 'SELECT * FROM sessions WHERE id = $1'
    values = [id]
    result = SqlRunner.run(sql, values)
    return Session.new(result.first)
  end
end
