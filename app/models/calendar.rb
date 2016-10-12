class Calender < ActiveRecord::Base
  belongs_to :user
  has_many :challenges
  
end
