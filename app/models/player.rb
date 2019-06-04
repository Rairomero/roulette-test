# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :bets
  has_many :rounds, through: :bets

  def self.daily_charge
    all.each do |player|
      player.balance += 10_000
      player.save
    end
  end
end
