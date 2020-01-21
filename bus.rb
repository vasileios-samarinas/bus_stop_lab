class Bus
  attr_reader :number, :destination

  def initialize(number, destination)
    @number = number
    @destination = destination
    @passengers = []
  end

 def drive()
   return "Brum Brum"
 end

 def count_passengers()
   @passengers.count()
 end

 def bus_pick_up(person)
    @passengers.push(person)
 end

def bus_drop_off(person)
  @passengers.delete(person)
end

def empty_bus()
  @passengers.clear()
end

end
