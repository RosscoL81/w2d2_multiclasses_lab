class Bus

  def initialize (route_number, destination)
    @route_number = route_number
    @destinatiom = destination
    @passengers = []
  end

  def drive()
    return "brum, brum"
  end

  def number_of_passengers()
    return @passengers.count
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
  end

  def remove_all_passengers(passengers)
    @passengers.clear()
  end
end
