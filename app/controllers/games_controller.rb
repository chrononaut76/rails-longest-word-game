# frozen_string_literal: true

# app/controllers/games_controller.rb
class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    characters = params[:word].upcase.chars.sort
    letters = params[:letters].split.sort
    in_grid = characters.all? { |char| letters.include?(char) }
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    real_word = JSON.parse(URI.open(url).read)['found']
    if in_grid && real_word
      @result = "Congratulations! #{params[:word].upcase} is a valid English word!"
    elsif real_word
      @result = "Sorry but #{params[:word].upcase} does not seem to be a valid English word..."
    else
      @result = "Sorry but #{params[:word].upcase} can't be built out of #{letters.join(', ').trim}"
    end
  end
end
