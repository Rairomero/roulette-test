# frozen_string_literal: true

class Bet < ApplicationRecord
  enum target: %i[verde rojo negro]
  belongs_to :round
  belongs_to :player
end
