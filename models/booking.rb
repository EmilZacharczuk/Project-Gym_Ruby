require_relative('../db/sql_runner')
require_relative('member')
require_relative('session')

class Booking

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @member_id = options['member_id'].to_i
    @session_id = options['session_id'].to_i
  end

end
