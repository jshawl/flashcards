ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  database: 'flashcards'
)

class CreateTables < ActiveRecord::Migration
  def initialize
    create_table :flashcards do |t|
      t.string :question
      t.string :answer
      t.references :category
    end
    create_table :categories do |t|
      t.string :title
    end
  end
end