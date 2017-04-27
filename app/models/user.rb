class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  validates :auth_token, uniqueness: true
  validates :username, presence: true, uniqueness: true

  before_create :generate_authentication_token!

  has_many :signups
  has_many :teams, through: :signups
  #has_many :matches, through: :teams

  def generate_authentication_token!
      begin
          self.auth_token = Devise.friendly_token
      end while self.class.exists?(auth_token: auth_token)
  end

  def matches
    if teams
      ids = ""
      teams.each { |team| ids += "#{team.id},"}
      ids.chop!
      return Match.where("team1_id IN (#{ids}) OR team2_id IN (#{ids})")
    end
  end
end
