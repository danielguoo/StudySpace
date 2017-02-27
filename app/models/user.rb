class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
  		format: { with: VALID_EMAIL_REGEX },
  		uniqueness: { case_sensitive: false }
  	validates :password, presence: true, length: { minimum: 6 }

  	#validates :major, presence: true, length: {maximum: 25}
  	#validates :gradYear, presence: true, length: {minimum: 4}, length: {maximum: 4}
  	:major
  	:gradYear
  	:facebook
  	:phone

  	has_secure_password
end
