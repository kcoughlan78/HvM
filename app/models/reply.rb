class Reply < ActiveRecord::Base
  attr_accessible :by, :response
  belongs_to :post

  validates :by, :presence => true

  validates :response, :presence => true,
            :length => { :minimum => 10 }
end
