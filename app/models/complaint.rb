class Complaint < ActiveRecord::Base
  attr_accessible :location, :message, :offender, :user_id

  LOCATION_TYPES = [ "Sports n' Tech", "Tech", "Gaming" ]

  belongs_to :user

  validates :message, :presence => true,
            :length => { :minimum => 30 }

  validates :offender, :presence => true

  validates :location, inclusion: LOCATION_TYPES

end
