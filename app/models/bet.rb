# frozen_string_literal: true

class Bet < ApplicationRecord
  enum target: %i[verde rojo negro]
  belongs_to :round
  belongs_to :player

  def player_bet
    self.amount = if player.balance <= 1000
                    player.balance
                  elsif true # Forecast.comming_hot_days?
                    (rand(0.03..0.07) * player.balance)
                  else
                    (rand(0.08...0.15) * player.balance)
                  end
  end
end
