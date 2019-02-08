require('minitest/autorun')
require_relative('../session')

class TestSession < Minitest::Test

  def setup
    options = {"id" => 1,
              "title" => "Yoga",
              "instructor" => "James Dean",
              "day" => "Monday",
              "time" => "15:20"}

    @session = Session.new(options)
  end



end
