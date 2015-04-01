require 'active_record'
require_relative 'connection'
require_relative '../models/category'
require_relative '../models/flashcard'

Category.destroy_all
categories = Category.create([
  { title: "web dev" },
  { title: "spanish" },
  { title: "finance" }
])

Flashcard.destroy_all
Flashcard.create([
  { question: "what is Active Record?", answer: "orm", category: categories[0] },
  { question: "How do you say hello in spanish?", answer: "hola", category: categories[1] },
  { question: "Are coupons useful?", answer: "yes", category: categories[2] },
])