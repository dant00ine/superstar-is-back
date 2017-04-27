class Team < ApplicationRecord
  has_many :signups
  has_many :users, through: :signups
  has_many :matches

  before_validation :gen_name!
  validate :check_player_uniqueness

  def gen_name!
    if name == nil or name.length == 0
      names = ""
      users.each { |user| names += "#{user.username} " }
      self.name = names.chop
    end
  end

  def check_player_uniqueness
    dict = {}
    users.each { |player| if player.id != nil and dict[player.id] then errors.add :users, message: "Player #{player.id} is on this team more than once!" else dict[player.id] = true end  }
  end

  def matches
    return Match.where("team1_id = #{id} OR team2_id = #{id}")
    #return Match.where(team1: self).or(Match.where(team2: self))
  end

  def opponents
    #join teams on both team1 and team2
    #matches.map |match| if team1 == self return team2; else return team1
    eagerMatches = Match.includes(:team1, :team2).where(team1: self).or(Match.where(team2: self))
    return eagerMatches.map { |match| if match.team1 == self then return match.team2 else return match.team1 end }
  end
end
