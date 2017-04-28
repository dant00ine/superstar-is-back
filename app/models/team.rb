class Team < ApplicationRecord
  has_many :signups
  has_many :users, through: :signups
  has_many :matches

  before_validation :enforce_name!
  validate :check_player_uniqueness

  def enforce_name!
    if name == nil or name.length == 0
      self.name = gen_name
    end
  end

  def gen_name
    names = ""
    if users
      users.each { |user| names += "#{user.username} " }
      names.chop!
    else
      names = "Empty Team"
    end
    return names
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
    eagerMatches = Match.includes(:team1, :team2).where("team1_id = #{id} OR team2_id = #{id}")
    #TODO(Ian): Find a way to do this entirely in SQL
    # opponents = Team.joins(:matches).where("team1_id = #{id} OR team2_id = #{id}")
    # puts "-----"
    # opponents.each {|oppo| puts oppo }
    # puts "-----"
    # return opponents
    existingTeams = {}
    result = []
    eagerMatches.each { |match|
      if match.team1 == self
        if !existingTeams[match.team2.id]
          existingTeams[match.team2.id] = true
          result.push match.team2
        end
      else
        if !existingTeams[match.team1.id]
          existingTeams[match.team1.id] = true
          result.push match.team1
        end
      end
      }
      return result
  end
end
