require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Account Model" do
	
	before do
	  Ohm.redis.flushdb
	  @account = Account.new(:username => "wenlong")
	  @account.password = '328205'
	end
	
  it 'can construct a new instance' do
    @account.save
    @account.must_equal(Account[@account.id])
  end
end
