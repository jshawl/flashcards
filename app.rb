require 'pry'
require 'active_record'

require_relative 'models/flashcard'
require_relative 'models/category'
require_relative 'models/game'
require_relative 'db/connection'


loop do
  game = Game.new
  puts "Welcome! Choose 1 of the following:"
  puts "1 - Play with all flashcards"
  puts "2 - View all categories"
  puts "3 - Exit."
  case gets.chomp
  when "1"
    @cards = Flashcard.all
    game.play @cards
  when "2"
    Category.list_all
    input = gets.chomp
    @cards = Flashcard.where( category_id: input )
    game.play @cards
  when "3"
    puts "bye."
    break
  end
end