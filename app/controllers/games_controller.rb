# frozen_string_literal: true

# app/controllers/games_controller.rb
class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    # characters = params[:word].upcase.chars
  end
end
