# frozen_string_literal: true

class Round < ApplicationRecord
  before_create :update_pot
  enum result: %i[verde rojo negro]
  has_many :bets
  has_many :players, through: :bets

  def self.play_round
    round = new(result: Round.target, pot: 0)
    Player.where('balance > 0').each do |player|
      bet = round.bets.new(player: player, round: round, target: Round.target)
      player.balance -= bet.player_bet
      round.pay_round(bet) if round.result == bet.target
      player.save
    end
    round.save!
  end

  def self.target
    case rand(100)
    when 0..2 then :verde
    when 3..49 then :rojo
    when 50..100 then :negro
    end
  end

  def pay_round(bet)
    case bet.target
    when :verde then player.balance += bet.amount * 15
    when :rojo then player.balance += bet.amount * 2
    when :negro then player.balance += bet.amount * 2
    end
  end

  private

  def update_pot
    self.pot = bets.sum(&:amount)
  end
end
