require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    end

    it 'releases working bike' do
      bike = DockingStation.new.release_bike
      expect(bike).to be_working

    end

  describe '#dock()' do
    it 'docks the released bike' do
      bike = DockingStation.new.release_bike
      expect(DockingStation.new).to respond_to dock(bike)
    end
  end

end
