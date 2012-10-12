class Account < Ohm::Model
  include Ohm::Timestamps
  include Ohm::DataTypes
  include BCrypt
  
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
  
  attribute :username 
  attribute :password_hash
  attribute :email
  attribute :provider
  attribute :uid, Type::Integer  
  
  # relationships
  
  
  def validate
    assert_present :username
    assert_present :password_hash
  end

  # encryption
  def password
    @_memo[:password] ||= Password.new(password_hash)
  end
  
  def password=(new_password)
    @_memo[:password] = Password.create(new_password)
    self.password_hash = @_memo[:password]
  end
  
  
  
  
  
end
