require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    characters = params[:word].upcase.chars
    # @missing = false
    # characters.each do |c|
    #   @missing = @letters.none?(c)
    #   break if @missing
    # end
    # unless missing
    #   url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    #   @results = JSON.parse(URI.open(url).read)
    # end
  end
end
