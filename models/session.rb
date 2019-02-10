require_relative('../db/sql_runner')
require_relative('booking')
require_relative('member')

class Session

  attr_accessor :title, :instructor, :day, :start_time
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @instructor = options['instructor']
    @day = options['day']
    @start_time = options['start_time']
  end

  def save()
    sql = 'INSERT INTO sessions (title, instructor, day, start_time)
    VALUES ($1, $2, $3, $4) RETURNING id'
    values = [@title, @instructor, @day, @start_time]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def update()
    sql = 'UPDATE sessions SET (title, instructor, day, start_time)
    = ($1, $2, $3, $4) WHERE id = $5'
    values = [@title, @instructor, @day, @start_time, @id]
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
