require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :hashed_password, :salted_password, :password, :password_confirmation
  attr_accessor :password
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
            :presence => true

  def encrypt_password
    if password.present?
    self.salted_password = BCrypt::Engine.generate_salt
    self.hashed_password = BCrypt::Engine.hash_secret(password, salted_password)
    end

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
