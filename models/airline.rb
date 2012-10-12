class Airline < Ohm::Model

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
  attribute :airline_code
  
  
end
