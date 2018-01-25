class Bet < ApplicationRecord
  belongs_to :player
  belongs_to :bettor

  validates :shot, presence: true
end
