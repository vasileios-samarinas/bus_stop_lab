require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')



class PersonTest < MiniTest::Test


  def setup()
    @person = Person.new("Vasileios1", 32)
    @person2 = Person.new("Tamas", 30)
  end



  def test_getting_name
    assert_equal("Vasileios", @person.name)
  end

  def test_getting_age
    assert_equal(30, @person2.age)
  end

end
