class Round < ApplicationRecord
  enum result: [:verde, :rojo, :negro]
  has_many :bets
  has_many :players, through: :bets
end
