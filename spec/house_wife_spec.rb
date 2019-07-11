require './house_wife/house_wife'
require './house_wife/vacuum_cleaner'
require './house_wife/washing_machine'

RSpec.describe do
  before do
    @house_wife = HouseWife.new
  end
  it 'house wife clean up' do
    expect(@house_wife.vacuum_cleaner).to receive(:locate_garbage)
    expect(@house_wife.vacuum_cleaner).to receive(:garbage_run_out)
    expect(@house_wife.clean_up).to eq 'finish!'
  end
  it 'house wife washing' do
    expect(@house_wife.washing_machine).to receive(:wash)
    expect(@house_wife.washing_machine).to receive(:dry)
    expect(@house_wife.washing).to eq 'finish!'
  end
end
