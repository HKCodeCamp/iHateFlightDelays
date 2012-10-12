class Airport < Ohm::Model
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

	attribute :name
	attribute :airport_code
  attribute :position  # how to code them in geohash
  
  
  
end
