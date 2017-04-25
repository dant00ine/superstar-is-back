class Match < ApplicationRecord
  belongs_to :teams
  enum result: {unknown: 0, team1: 1, team2: 2, tie: 3, interrupted: 4}
end
