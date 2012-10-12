class Flight < Ohm::Model
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

  attribute :flight_no
  attribute :airline_id
  attribute :departure_airport_id
  attribute :arrival_airport_id
  
  attribute :boarding_time, Type::Time
  attribute :takeoff_time, Type::Time
  attribute :landing_time, Type::Time
  
  collection :flights, :FlightEachDay
  
  
  def airline=(airline)
    self.airline_id = airline.id
  end
  
  def airline
  	@_memo[:airline] ||= Airline[airline_id]
  end

	def departure_airport=(airport)
		self.departure_airport_id = airport.id
	end
	
	def departure_airport
		@_memo[:departure_airport] ||= Airport(departure_airport_id)
	end
	
	def arrival_airport=(airport)
		self.arrival_airport_id = airport.id
	end
	
	def arrival_airport
		@_memo[:arrival_airport] ||= Airport(arrival_airport_id)
	end
 
#overridden public method  
  def airline_id=(airline_id)
  	attributes[:airline_id] = airline_id
  	@_memo.delete(:airline)
  end  
  
  def departure_airport_id=(departure_airport_id)
  	attributes[:departure_airport_id] = departure_airport_id
  	@_memo.delete(:departure_airport)
  end  
  
  def arrival_airport_id=(arrival_airport_id)
  	attributes[:arrival_airport_id] = arrival_airport_id
  	@_memo.delete(:arrival_airport)
  end   
end
