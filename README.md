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

## US 6
As a system maintainer

So that busy areas can be served more effectively

I want to be able to specify a larger capacity when necessary
* for this, initializing @capacity is necessary. 
* then pass the @capacity variable to the methods.

1. Unit test for capacity 'has default capacity', where subject.capacity should eq default capacity.
2. Create @capacity = DEFAULT_CAPACITY in initialize, then insert into attr_reader.
3. Modify full? method to accept @capacity.
4. Refactor unit test where DEFAULT_CAPACITY is called.
* because we need to be able to change capacity over time, we could initialize capacity to pass
new values. 
5. Unit test for initialization (has variable capacity and defaults capacity) of new initialized variable @capacity.

## US 7

As a member of the public

So that I reduce the chance of getting a broken bike in future

I'd like to _report_ a bike as _broken_ when I return it

* here, we need to think that it is the state of the bike
* responsibility of Bike class enable report_broken

1. Unit test for report_broken using Rspec predicate matcher to define state of the bike.
2. Run rspec, we find error: undefined method report_broken.
3. Implement this method def report_broken with nothing inside, then run rspec again.
4. Error: expected #<Bike:0x00007fbb84227c10> to respond to `broken?`
5. So now we know that we need to implement the state broken? in our method.
6. Start with implementing the broken? method. Inside the method, we insert @broken variable that 
implicitly should be true or false.
7. That means, in our method report_broken, we do @broken = true

## US 8

As a maintainer of the system

So that I can manage broken bikes and not disappoint users

I'd like docking stations _not to release_ _broken_ bikes

* we need to stop DockingStation to release broken bikes as it is accepting broken bikes

1. Unit test for raising error when trying to release broken bike

As a maintainer of the system

So that I can manage broken bikes and not disappoint users

I'd like docking stations to _accept returning bikes (broken or not)_







 


