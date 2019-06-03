class Bet < ApplicationRecord
  enum target: [:verde, :rojo, :negro]
  belongs_to :round
  belongs_to :player
end
