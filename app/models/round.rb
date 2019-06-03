# frozen_string_literal: true

class Round < ApplicationRecord
  enum result: %i[verde rojo negro]
  has_many :bets
  has_many :players, through: :bets
end
