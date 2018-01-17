class Bettor < ApplicationRecord
  belongs_to :game
  has_many :bets
end
