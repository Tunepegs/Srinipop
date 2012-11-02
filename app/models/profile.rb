class Profile < ActiveRecord::Base
  attr_accessible :descr, :joke_id, :name

  has_many :jokes
end
