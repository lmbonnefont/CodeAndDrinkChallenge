class Bettor < ApplicationRecord
  belongs_to :game
  has_many :bets

  validates :surname, presence: true
  validates :name, presence: true
end
