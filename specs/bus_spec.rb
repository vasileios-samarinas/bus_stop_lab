require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')


class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")

    @person = Person.new("Vasileios", 32)
    @person2 = Person.new("Tamas", 30)



  end

  def test_getting_number()
    assert_equal(22, @bus.number())
  end

  def test_getting_destination()
    assert_equal("Ocean Terminal", @bus.destination())
  end

  def test_drive()
    assert_equal("Brum Brum", @bus.drive())
  end

  def test_count_passengers()
    assert_equal(0, @bus.count_passengers())
  end

  def test_bus_pick_up()
    @bus.bus_pick_up(@person)
    assert_equal(1, @bus.count_passengers())
  end

  def test_bus_drop_off()
    @bus.bus_pick_up(@person)
    @bus.bus_pick_up(@person2)
    @bus.bus_drop_off(@person)
    assert_equal(1, @bus.count_passengers())
  end

  def test_empty_bus()
    @bus.bus_pick_up(@person)
    @bus.bus_pick_up(@person2)
    @bus.empty_bus
    assert_equal(0, @bus.count_passengers)
  end


end
