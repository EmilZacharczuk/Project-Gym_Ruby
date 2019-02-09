require('minitest/autorun')
require_relative('../booking')

class TestBooking < Minitest::Test

  def setup
    options = {"id" => 1,
              "member_id" => 1,
              "session_id" => 2}

    @booking = Booking.new(options)
  end

  def test_id
    assert_equal(1, @booking.id)
  end

  def test_member_id
    assert_equal(1, @booking.member_id)
  end

  def test_session_id
    assert_equal(2, @booking.session_id)
  end
end
