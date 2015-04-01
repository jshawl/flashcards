class Game
  attr_accessor :score
  def initialize
    @score = 0
  end
  def self.play cards
    cards.each do |card|
      puts card.question
      ans = gets.chomp
      if ans == card.answer
        puts "Right!"
      else
	puts "Wrong :("
      end
    end
  end
end