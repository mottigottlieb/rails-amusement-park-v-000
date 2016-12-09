class Ride < ActiveRecord::Base
  # write associations here
  require 'pry'
  belongs_to :user
  belongs_to :attraction
#  => User(id: integer, name: string, password_digest: string,
 # nausea: integer, happiness: string, tickets: integer, height: integer, admin: boolean) 
#  => Attraction(id: integer, name: string, tickets: integer, nausea_rating: integer, happiness_rating: integer, min_height: integer, user_id: integer) 

  def take_ride
  	if self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height
	 		return "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
	 	elsif 
  			self.user.tickets < self.attraction.tickets
  		return "Sorry. You do not have enough tickets the #{attraction.name}."
  			elsif self.user.height < self.attraction.min_height 
  		return "Sorry. You are not tall enough to ride the #{attraction.name}."
  	end
	   self.user.update(tickets: self.user.tickets-self.attraction.tickets,
	   				nausea: self.user.nausea + self.attraction.nausea_rating,
	   				happiness: self.user.happiness + self.attraction.happiness_rating
	   				) 
   end
 


end
 


