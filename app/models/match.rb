class Match < ApplicationRecord
  #belongs_to :teams
  belongs_to :creator, class_name: :User
  belongs_to :team1, class_name: :Team
  belongs_to :team2, class_name: :Team
  enum result: {unknown: 0, team1: 1, team2: 2, tie: 3, interrupted: 4, cancelled: 5}

  validate :check_team_player_uniqueness
  validates :team1, :team2, presence: true

  def check_team_player_uniqueness
    dict = {}
    team1.users.each { |player| dict[player.id] = true }
    team2.users.each { |player| if player.id != nil and dict[player.id] then errors.add :base, message: "Player #{player.id} is on two teams!" end  }
  end

  def teams
    return [team1, team2]#Team.where(id: team1_id).or(Team.where(id: team2_id))
  end
end
