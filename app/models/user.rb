require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :hashed_password, :salted_password, :password, :password_confirmation, :username, :fname, :sname, :bio
  attr_accessor :password, :user_email, :user_username
  before_save :encrypt_password

  validates :email,
            :presence => true,
            :uniqueness => true,
            :length => {:within => 5..75},
            :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}
  validates :password,
            :presence => true,
            :confirmation => true,
            :length => {:within => 6..20},
            :presence => true,
            :if => :password_present?
  validates :username,
            :uniqueness => true,
            :length => {:within => 6..18},
            :if => :username_present?
  validates :bio,
            :length => {:within => 10..200},
            :if => :bio_present?

  has_many :posts
  has_many :replies

  def encrypt_password
    if password.present?
    self.salted_password = BCrypt::Engine.generate_salt
    self.hashed_password = BCrypt::Engine.hash_secret(password, salted_password)
    end

  end

  def password_present?
    !password.nil?
  end

  def username_present?
    !username.nil?
  end

  def bio_present?
    !bio.nil?
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.hashed_password == BCrypt::Engine.hash_secret(password,user.salted_password)
      user
    else
      nil
    end
  end

end
