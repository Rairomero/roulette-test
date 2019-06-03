class RoundController < ApplicationController
  def index
    @rounds = Round.all
  end
end
