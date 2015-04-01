class Category < ActiveRecord::Base
  has_many :flashcards
  def self.list_all
    puts "Please choose a category:"
    Category.all.each do |category|
      puts "#{category.id} - #{category.title}"
    end
  end
end