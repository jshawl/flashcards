class Game
  attr_accessor :score
  def initialize
    @score = 0
  end
  def play cards
    cards.each do |card|
      puts card.question
      ans = gets.chomp
      if ans == card.answer
        puts "Right!"
	@score += 1
      else
	puts "Wrong :("
      end
    end
    puts "Your score is #{@score} / #{cards.length}"
  end
end