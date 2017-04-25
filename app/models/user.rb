class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  validates :auth_token, uniqueness: true
  validates :username, presence: true, uniqueness: true

  before_create :generate_authentication_token!

  has_many :usertoteams
  has_many :teams, through: :usertoteams

  def generate_authentication_token!
      begin
          self.auth_token = Devise.friendly_token
      end while self.class.exists?(auth_token: auth_token)
  end
end
