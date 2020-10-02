require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bike' do
      bike = DockingStation.new.release_bike
      expect(bike).to be_working
    end

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



