# boris-bike-challenge-redone

## Set up environment and files

1. Create lib folder
2. Run rspec --init


User stories

## US 1
As a person

So that I can use a bike

I'd like a _docking station_ to _release a bike_

1. Define Classes: Docking Station, Bike
2. What does Docking Station do? release_bike 
3. Unit test for docking station responding to release_bike
4. Create method :release_bike on DockingStation class


## US 2
As a person

So that I can use a good bike

I'd like to see if a bike is _working_
1. Bike _working?_ If true, _release_bike_
2. Here, the responsibility _release_bike_ comes from DockingStation Class
3. So we need to require_relative 'bike' in the DockingStation class to be able to pass the object
4. Bike responds to _working?_ - here we create a new instance of the Class 
(Bike.new) that is returned from the method _working? 
---- All tests should pass now.

## US 3
As a member of the public

So I can return bikes I've hired

I want to dock my bike at the docking station

1. Unit test for method _dock()_, which  is  passed onto instance variable from DockingStation
 - first we create a context that a new bike has been released and then able to be docked,
 which is passed as an argument to the method.
2. Run rspec and a fail message pops up -  no method dock for DockingStation
3. Create method _dock()_  

## US 3

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked 
 


