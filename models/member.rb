require_relative('../db/sql_runner')
require_relative('booking')
require_relative('session')

class Member

  def initialize('options')
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @second_name = options['second_name']
    @address = options['address']

  end
end
