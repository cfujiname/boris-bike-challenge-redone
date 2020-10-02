require_relative 'bike' # so Docking station can grab Bike object

class DockingStation

  attr_reader :bike
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  #def release_bike this gives infinite bikes at the moment
  #  Bike.new
  #end

  #def release_bike
  #  fail 'No bikes available' if @bikes.empty?
  #  @bikes.pop # takes last item of array out of it
  #end
  #
  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  #def dock(bike)
  #  fail 'Docking station is full' if @bikes.count >= 20 # defining max limit
  #  @bikes << bike # storing bikes in array
  #end

  def dock(bike)
    fail 'Docking station is full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end