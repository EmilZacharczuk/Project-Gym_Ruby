require('minitest/autorun')
require_relative('../member')

class TestMember < Minitest::Test

  def setup
    options = {"id" => 1,
              "first_name" => "John",
              "second_name" => "Walker",
              "address" => "26 Buchanan Street EH3 5BF Edinburgh"}

    @member = Member.new(options)
  end



end
