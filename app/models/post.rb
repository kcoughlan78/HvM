class Post < ActiveRecord::Base
  attr_accessible :name, :content, :image_url, :title, :tags_attributes, :user_email

  #validates :name, :presence => true

  validates :content, :presence => true,
            :length => { :minimum => 10 }

  validates :title, :presence => true,
            :length => { :minimum => 3 }

  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png|svg|dwg)\Z}i,
      message: 'image must be a gif/jpg/png/svg/dwg file type.'
  }

  belongs_to :user
  has_many :replies, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
                                :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
