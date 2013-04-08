class Reply < ActiveRecord::Base
  attr_accessible :by, :response, :email, :username
  belongs_to :post
  has_one :user

  #validates :by, :presence => true

  validates :response, :presence => true,
            :length => { :minimum => 10 }
end
