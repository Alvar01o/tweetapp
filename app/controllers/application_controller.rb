class ApplicationController < ActionController::Base
  protect_from_forgery
 
 	def define_data 
 		@seguidos  = Follower.where("id_user = :id_user", {id_user: current_user.id}).count 
        @seguidores =  Follower.where("id_follow = :id_follow", {id_follow: current_user.id}).count    
 		
 	end
end
