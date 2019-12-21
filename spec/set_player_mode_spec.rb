require 'spec_helper'

RSpec.describe do
  describe 'set_player_mode' do
    before :each do
      allow(STDIN).to receive(:gets).and_return(1, 2)
    end
    it 'return 2' do
      expect(set_player_mode).to eq 3
    end
  end
end
