require('minitest/autorun')
require_relative('../session')

class TestSession < Minitest::Test

  def setup
    options = {"id" => 1,
              "title" => "Yoga",
              "instructor" => "James Dean",
              "day" => "Monday",
              "start_time" => "15:20",
              "capacity" => 10}

    @session = Session.new(options)
  end

  def test_id()
    result = @session.id
    assert_equal(1, result)
  end

  def test_title()
    assert_equal("Yoga", @session.title)
  end

  def test_instructor()
    assert_equal("James Dean", @session.instructor)
  end

  def test_day()
    assert_equal("Monday", @session.day)
  end

  def test__start_time()
    assert_equal("15:20", @session.start_time)
  end

  def test_capacity()
    assert_equal(10, @session.capacity)
  end
end
