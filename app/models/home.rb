class Home < ActiveRecord::Base
  has_many :challenges
  has_many :users
  has_many :calendars
end
