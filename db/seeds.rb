# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

10.times do
  tag = Tag.new
  tag.name = Faker::Color.color_name
  tag.save
end

tags = Tag.all
tag_count = tags.count

board = Board.new
board.title = "Books to read"
board.save

7.times do
  list = List.new
  list.board_id = board.id
  list.title = Faker::Book.genre
  list.save

  rand(10).times do
    card = Card.new
    card.list_id = list.id
    card.title = Faker::Book.title
    card.description = "by #{Faker::Book.author}, from #{Faker::Book.publisher}"
    card.save

    note = Note.new
    note.body = Faker::Hacker.say_something_smart
    note.card_id = card.id
    note.save

    random_tags = tags.sample(rand(0..tag_count))
    random_tags.each do |tag|
      tagging = Tagging.new
      tagging.card_id = card.id
      tagging.tag_id = tag.id
      tagging.save
    end
  end
end


board = Board.new
board.title = "Great companies"
board.save

7.times do
  list = List.new
  list.board_id = board.id
  list.title = Faker::Company.name
  list.save

  rand(10).times do
    card = Card.new
    card.list_id = list.id
    card.title = Faker::Company.buzzword
    card.description = Faker::Company.catch_phrase
    card.save

    note = Note.new
    note.body = Faker::Hacker.say_something_smart
    note.card_id = card.id
    note.save

    random_tags = tags.sample(rand(0..tag_count))
    random_tags.each do |tag|
      tagging = Tagging.new
      tagging.card_id = card.id
      tagging.tag_id = tag.id
      tagging.save
    end
  end
end
