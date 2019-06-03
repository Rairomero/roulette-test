# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :bets
  has_many :rounds, through: :bets

  def daily_charge
    all.each do |player|
    end
  end
end
