class Game < ActiveRecord::Base
  attr_accessible :level, :score, :user_id
  #comment used to test git

  belongs_to :user

  validates :score, :presence => true

end
