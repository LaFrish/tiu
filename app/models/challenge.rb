class Challenge < ActiveRecord::Base
  has_many :user
  has_many :calendars
end
