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

  def test_id()
    assert_equal(1, @member.id)
  end

  def test_first_name()
    assert_equal("John", @member.first_name)
  end

  def test_second_name()
    assert_equal("Walker", @member.second_name)
  end

  def test_address()
    assert_equal("26 Buchanan Street EH3 5BF Edinburgh", @member.address)
  end

  def test_pretty_name()
    assert_equal("John Walker", @member.pretty_name)
  end
end
