require 'bike'

describe Bike do

  it { is_expected.to respond_to :working?}

  describe '#working?' do
    it 'expects to be true' do
      expect(Bike.new.working?).to be true
    end
  end

  describe '#report_broken' do
    it 'can be reported broken' do
      subject.report_broken
      expect(subject).to be_broken
      # here Rspec predicate matchers, expecting something to be in a state
    end
  end

end
