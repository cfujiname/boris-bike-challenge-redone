require 'bike'

describe Bike do

  it { is_expected.to respond_to :working?}

  describe '#working?' do
    it 'expects to be true' do
      expect(Bike.new.working?).to be true
    end
  end

end
