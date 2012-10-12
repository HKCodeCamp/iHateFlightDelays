require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "FlightEachDay Model" do
  it 'can construct a new instance' do
    @flight_each_day = FlightEachDay.new
    refute_nil @flight_each_day
  end
end
