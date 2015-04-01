class Category < ActiveRecord::Base
  has_many :flashcards
end