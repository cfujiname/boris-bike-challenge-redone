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
As a member of the public

So that I am not confused and charged unnecessarily

I'd like docking stations not to release bikes when there are none available.
* a method for not releasing bike must be implemented if there are no bikes available.
* raise an error and not release bike.
* at the moment, our method def release_bike gives infinite bikes.
* decision to be done: start DockingStation with bike or without bike?

1. Refactor Unit test for release_bike, where we first dock a bike and then release it.
2. Change method release_bike in Class to return instance variable @bike.
3. Unit test for raise_error when no bikes are available inside of _release_bike_.
4. Implement fail/unless in release_bike method in Class.
5. Tests should pass.

## US 6
As a maintainer of the system

So that I can control the distribution of bikes

I'd like docking stations not to accept more bikes than their capacity
* DockingStation does not accept bike when full.
* assuming capacity is 1 bike per station

1. Manual feature test to see what behaviour we are expecting.
2. At the moment, DockingStation accepts infinite bikes.
3. Unit test to raise_error when DockingStation is full.
4. Implement method to fail/if @bike
5. All tests should pass.

## US 6
As a system maintainer

So that I can plan the distribution of bikes

I want a docking station to have a default capacity of 20 bikes.
* manual feature test gives us RuntimeError Docking station is full when we try to add 20 bikes.

1. Unit test refactor: #dock() expects to raise_error when 20 times Bike.new are put in it.
2. Change methods to accept 20 bikes and only then raise error message. 
* for that, initialize a @bikes = [] - where bikes are stored.
* @bikes.count >= 20, then raise that Docking station is full, otherwise carry on putting bikes in @bikes.
* if @bikes.empty?, then raise that bikes are not available, otherwise take bike out of array (.pop).
3. Implement SRP and separate methods as for now, both methods above have more than one responsibility.
* for that, we can create a private section.
* put full? and empty? methods inside private.
* call these 2 methods in release_bike and dock(bike).
4. Refactor for a DEFAULT_CAPACITY instead of a hardcoded number 20.
* in unit test and methods in Class







 


