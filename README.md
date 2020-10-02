# boris-bike-challenge-redone

## Set up environment and files

1. Create lib folder
2. Run rspec --init




#User stories
* for global comprehension, read all user stories first, then start working on each.

## US 1
As a person

So that I can use a bike

I'd like a _docking station_ to _release a bike_

1. Define Classes: Docking Station, Bike - we have two objects interacting with each other.
2. What does Docking Station do? release_bike. 
3. Unit test for docking station responding to release_bike.
4. Create method :release_bike on DockingStation class.

--- Manual feature test helper for IRB---

Fetch files:

require './lib/docking_station'
require './lib/bike'


docking_station = DockingStation.new
bike = Bike.new

docking_station.release_bike
docking_station.dock(bike)
docking_station.bike




---

## US 2
As a person

So that I can use a good bike

I'd like to see if a bike is _working_
1. Bike _working?_ If true, _release_bike_ - here we define the state of the bike, which can be interpreted as a Boolean.
2. Here, the responsibility _release_bike_ comes from DockingStation Class.
3. So we need to require_relative 'bike' in the DockingStation class to be able to pass the object.
4. Bike responds to _working?_ - here we create a new instance of the Class, because if it is working, we create a new bike and release it.

(Bike.new) that is returned from the method _working? 
---- All tests should pass now.

## US 3
As a member of the public

So I can return bikes I've hired

I want to dock my bike at the docking station

1. Unit test for method _dock()_, which is passed onto instance variable from DockingStation.
 - first we create a context that a new bike has been released and then able to be docked,
 which is passed as an argument to the method _dock_.
2. Run rspec and a fail message pops up - no method dock for DockingStation.
3. Create method _dock()_ and pass the test in the simplest way possible.

## US 4
As a member of the public

So I can decide whether to use the docking station

I want to see a bike that has been docked 
* For this user story, DockingStation responsibilities would be 
* remembering docked bikes and report docked bikes (store and access/read)

1. Update unit test for _dock_ , creating a bike object (bike = Bike.new) as 
object returned was nil. 
* Create a new bike object in the test to contextualise.
2. Run rspec and the error shows returning nil as we need to pass the bike in the 
Model in the Class - tests pass.
3. Check on IRB to see the bike being returned - firstly returns nil as DockingStation 
not able to remember it -> creation of instance variables.
4. Create instance variable @bike for DockingStation, implement attr_reader :bike

## US 5







 


