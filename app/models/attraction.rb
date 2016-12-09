class Attraction < ActiveRecord::Base
  # write associations here
  has_many :rides 
  has_many :users, :through => :rides
  has_many :users

end
