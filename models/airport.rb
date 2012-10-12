class Airport < Ohm::Model
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

	attribute :name
	attribute :airport_code
  attribute :latitude, Type::FLoat  # how to code them in geohash
  attribute :longitude, Type::Float
  
  
  
end
