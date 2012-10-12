class Complaints < Ohm::Model
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
	
	attribute :content
  attribute :author_id
  
  
  def author=(author)
    self.author_id = author.id
  end
  
  def author
  	@_memo[:author] ||= Account[author_id]
  end
 
#overridden public method  
  def author_id=(author_id)
  	attributes[:author_id] = author_id
  	@_memo.delete(:author)
  end  
end
