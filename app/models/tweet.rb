class Tweet < ActiveRecord::Base
  attr_accessible :id_user, :tweet_content, :tweet_created, :tweet_status
  belongs_to:user

  validates :tweet_content, presence: true

end
