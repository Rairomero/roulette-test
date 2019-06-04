# frozen_string_literal: true

class RoundController < ApplicationController
  def index
    @rounds = Round.all
  end

  def show; end
end
