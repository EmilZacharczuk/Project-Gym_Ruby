require_relative('../db/sql_runner')
require_relative('booking')
require_relative('member')

class Session

  def initialize('options')
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @instructor = options['instructor']
    @day = options['day']
    @start_time = options['start_time']
  end

end
