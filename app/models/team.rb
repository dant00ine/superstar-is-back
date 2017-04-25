class Team < ApplicationRecord
  #has_many :usertoteams
  #has_many :users, through: :usertoteams
  #has_many :opponents, through: :matches, foreign_key: :team1

  before_validation :gen_name!

  def gen_name!
    if name.length == 0
      names = ""
      @users.each { |user| names += "#{user.username} " }
      @name = names.chop
    end
  end

  def matches
    return Match.where(team1: self).or(team2: self)
  end

  def opponents
    #join teams on both team1 and team2
    #matches.map |match| if team1 == self return team2; else return team1
    eagerMatches = Matches.includes(:team1, :team2).where(team1: self).or(team2: self)
    return eagerMatches.map { |match| if match.team1 == self then return match.team2 else return match.team1 end }
  end
end
