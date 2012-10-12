require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Complaints Model" do
  it 'can construct a new instance' do
    @complaints = Complaints.new
    refute_nil @complaints
  end
end
