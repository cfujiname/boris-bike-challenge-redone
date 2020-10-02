require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do # refactored method to dock bike first, then release. DockingStation starts will zero bikes
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes are available' do
      # contextually we don't dock a bike to be able to release
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end


    #it 'releases working bike' do
    #  bike = subject.release_bike
    #  expect(bike).to be_working
    #end

    it { is_expected.to respond_to(:bike) }
    end


  describe '#dock()' do
      it { is_expected.to respond_to(:dock).with(1).argument }
    end


  describe '#bike' do
    it 'returns docked bikes' do # shows the bikes we returned
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
  end
end






