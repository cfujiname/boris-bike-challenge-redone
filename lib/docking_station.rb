require_relative 'bike' # so Docking station can grab Bike object

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)

  end

end