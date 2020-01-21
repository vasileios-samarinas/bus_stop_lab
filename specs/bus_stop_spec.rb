require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')
require_relative('../bus_stop')



class BusStopTest < MiniTest::Test

  def setup
    @busstop = BusStop.new()
    
  end


end
