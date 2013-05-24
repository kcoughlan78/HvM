class Game < ActiveRecord::Base
  attr_accessible :level, :score, :user_id

  belongs_to :user

  validates :score, :presence => true

end
