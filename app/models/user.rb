class User < ApplicationRecord
  has_and_belongs_to_many :courses

  before_save { self.email = email.downcase }

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
      format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
  validates :major, presence: true, length: {maximum: 25}
  validates :bio, presence: true, length: {maximum: 250}
  VALID_YEAR_REGEX = /^(19[5-9]\d|20[0-1]\d|2020)$/ #1950 - 2020
    validates :gradyear, presence: true, length: {minimum: 4},
      format: { with: VALID_YEAR_REGEX, multiline: true }
  validates :facebook, length: {maximum: 255 }
  
  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end