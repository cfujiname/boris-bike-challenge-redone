require 'docking_station'

describe DockingStation do

  let(:bike) { double :bike }

  it { is_expected.to respond_to(:bike) }

  it 'releases working bike' do # refactored method to dock bike first, then release. DockingStation starts will zero bikes
    bike = double(:bike, broken?: false)
    subject.dock bike
    expect(subject.release_bike).to be bike
                                # allow(bike).to receive(:working?).and_return(true)
                                # subject.dock(bike) # subject.dock Bike.new
                                # released_bike = subject.release_bike # bike = subject.release_bike
                                #expect(released_bike).to be_working # expect(bike).to be_working
  end

  it 'does not release a broken bike' do
    bike = double(:bike, broken?: true) #allow(bike).to receive(:broken?).and_return(true) #
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


  describe '#release_bike' do

    it 'raises an error when no bikes are available' do
      # contextually we don't dock a bike to be able to release
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end




  #it 'releases working bike' do
    #  bike = subject.release_bike
    #  expect(bike).to be_working
    #end

  describe '#dock()' do

    it 'raises an error when full' do
      subject.capacity.times { subject.dock double :bike }
      expect { subject.dock double :bike }.to raise_error 'Docking station is full'
    end
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect { docking_station.dock Bike.new }.to raise_error 'Docking station is full'
    end

    subject { DockingStation.new }
    let(:bike) { Bike.new }

    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock(bike) }.to raise_error 'Docking station is full'

    end
  end
end








