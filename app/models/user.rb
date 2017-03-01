class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
  		format: { with: VALID_EMAIL_REGEX },
  		uniqueness: { case_sensitive: false }
    has_secure_password
  	validates :password, presence: true, length: { minimum: 6 }

  	#validates :major, presence: true, length: {maximum: 25}
  	#validates :gradYear, presence: true, length: {minimum: 4}, length: {maximum: 4}
  	
  VALID_YEAR_REGEX = /^(19[5-9]\d|20[0-1]\d|2020)$/
    validates :major, presence: true, length: {maximum: 25}
  	validates :gradyear, presence: true, length: {minimum: 4},
      format: { with: VALID_YEAR_REGEX }
    
  #validates :shortBio, presence: true, length: {maximum: 300}
  :facebook

end
