require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Flight Model" do
  it 'can construct a new instance' do
    @flight = Flight.new
    refute_nil @flight
  end
end
