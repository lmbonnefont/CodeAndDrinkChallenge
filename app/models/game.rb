class Game < ApplicationRecord
  belongs_to :user
  has_many :players
  has_many :bettors
  has_many :bets
end
