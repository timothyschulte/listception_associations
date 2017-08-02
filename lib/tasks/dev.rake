namespace :dev do
  desc "Pre-populate the database with some dummy rows"
  task prime: :environment do
    10.times do
      tag = Tag.new
      tag.name = Faker::Color.color_name
      tag.save
    end

    tags = Tag.all
    tag_count = tags.count

    board = Board.new
    board.title = "Books to read"
    board.description = Faker::Book.publisher
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
    board.description = Faker::Company.profession
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
  end
end
