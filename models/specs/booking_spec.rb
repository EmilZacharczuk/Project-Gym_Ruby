require('minitest/autorun')
require_relative('../booking')

class TestBooking < Minitest::Test

  def setup
    options = {"id" => 1,
              "member_id" => 1,
              "lesson_id" => 2}
              
    @booking = Booking.new(options)
  end



end
