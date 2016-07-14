class User < ActiveRecord::Base

  # associations
  has_one :profile

  # validations
  validates_presence_of :email, :password_provided, :url
  validates_uniqueness_of :email, :url
  validates_length_of :email, :password_provided, minimum: 6

  # saving users passwords safely
  attr_accessor :password_provided
  before_save :generate_passwords

  def generate_passwords
    self.password_salt = BCrypt::Engine.generate_salt
    self.password = BCrypt::Engine.hash_secret(password_provided, password_salt)
  end

end
