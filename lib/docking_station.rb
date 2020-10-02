require_relative 'bike' # so Docking station can grab Bike object

class DockingStation

  attr_reader :bike

  #def release_bike this gives infinite bikes at the moment
  #  Bike.new
  #end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end