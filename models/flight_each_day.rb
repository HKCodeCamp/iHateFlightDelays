class FlightEachDay < Ohm::Model
  include Ohm::Timestamps
  include Ohm::DataTypes

  # Examples:
  # attribute :name
  # attribute :email, String
  # reference :venue, Venue
  # set :participants, Person
  # counter :votes
  #
  # index :name
  #
  # def validate
  #   assert_present :name
  # end
	
	attribute :each_day, Type::Date
	attribute :boarding_time, Type::Time
	attribute :takeoff_time, Type::Time
	attribute :landing_time, Type::Time
	
	reference :flight, Flight
  set :passengers, Account  # after authentication
  
  # unique for composite key that flight_id+each_day
  # flight_id::each_day
  
end
