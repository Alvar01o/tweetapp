class HomeController < ApplicationController


	def index
			if  !user_signed_in?
				redirect_to new_user_session_path
			else 
   				@tweet = Tweet.new
			    @tweet.id_user = current_user.id   
			    @tweet.tweet_status = 'active'
			    @tweet.tweet_created = Time.now.strftime("%m/%d/%Y")	

				@followed  = Follower.where("id_user = :id_user", {id_user: current_user.id})
				@tweets =Array.new
				id_followers = Array.new
		        id_followers.push(current_user.id)
		        @followed.each do |f|
		          id_followers.push(f.id_follow)
		        end 
				@seguidos  = Follower.where("id_user = :id_user", {id_user: current_user.id}).count 
				@seguidores =  Follower.where("id_follow = :id_follow", {id_follow: current_user.id}).count
		         tw = Tweet.where(:id_user => id_followers).order("id DESC")

		         @tweets.push(tw)

			end
	end



end
