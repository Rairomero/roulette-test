# frozen_string_literal: true

class RoundsController < ApplicationController
  def index
    @rounds = Round.all.page(params[:page])
  end

  def show
    @round = Round.find(params[:id])
  end
end
