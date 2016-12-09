class User < ActiveRecord::Base
  # write associations here  
    has_secure_password

    has_many :rides
    has_many :attractions, :through => :rides 
    has_many :attractions

    def mood
    	if self.nausea > self.happiness
    		"sad"
    	else
    		"happy"
    	end
    end
end


