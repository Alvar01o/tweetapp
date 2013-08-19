class Comment < ActiveRecord::Base
  attr_accessible :coment_content, :comment_created, :comment_status, :id_tweet, :id_user
  has_one:tweet
  has_many:user  
end
