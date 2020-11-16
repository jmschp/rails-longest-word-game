class GamesController < ApplicationController
  def new
    @letters_grid = generate_grid.join(', ')
  end

  def score
  end

  def generate_grid
    vowels = %w[A E I O U]
    consonants = ('A'..'Z').to_a - vowels
    letters_grid = []
    num_vowels = rand(1..10)
    num_vowels.times { letters_grid << vowels.sample }
    (15 - num_vowels).times { letters_grid << consonants.sample }
    return letters_grid
  end
end
