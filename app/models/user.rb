class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  validates :password, presence: true, length: { minimum: 8 }

  has_many :songs, through: :playlist, source: :song
  has_many :playlist, dependent: :destroy 

  has_secure_password
end

