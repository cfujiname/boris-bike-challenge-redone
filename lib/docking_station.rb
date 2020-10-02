require_relative 'bike' # so Docking station can grab Bike object

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

end