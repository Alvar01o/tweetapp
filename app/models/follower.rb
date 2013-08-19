class Follower < ActiveRecord::Base
  attr_accessible :id_follow, :id_user
  has_many :users
end
