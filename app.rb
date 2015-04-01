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
  puts "3 - Create a new flashcard"
  puts "9 - Exit."
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
    puts "Creating new flashcard:"
    puts "Enter question:"
    question = gets.chomp
    puts "Enter answer:"
    answer = gets.chomp
    puts "Enter category:"
    category = Category.find_or_create_by( title: gets.chomp )
    @flashcard = Flashcard.new( question: question, answer: answer, category: category )
    if @flashcard.save
      puts "Flashcard created successfully!"
    else
      puts "Error creating flashcard"
    end
  when "9"
    puts "bye."
    break
  end
end