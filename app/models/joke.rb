class Joke < ActiveRecord::Base
  attr_accessible :joke, :user

  belongs_to :profile
end
