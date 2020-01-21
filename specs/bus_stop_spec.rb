require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')
require_relative('../bus_stop')


class BusStopTest < MiniTest::Test

  def setup
    @busstop = BusStop.new("Glasgow")
    @person = Person.new("Vasileios", 32)
    @person2 = Person.new("Tamas", 30)
  end

  def test_add_person_to_queue()
    @busstop.add_person_to_queue(@person)
    assert_equal(1,@busstop.queue_length)
  end

  def test_add_more_people_to_queue()
    @busstop.add_person_to_queue(@person)
    @busstop.add_person_to_queue(@person2)
    assert_equal(2,@busstop.queue_length)
  end

  def test_clear_queue()
  @busstop.add_person_to_queue(@person)
  @busstop.add_person_to_queue(@person2)
  @busstop.clear_queue()
  assert_equal(0, @busstop.queue_length())
end

end
