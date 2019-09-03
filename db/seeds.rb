5.times do
  Board.create(name: Faker::Company.name)
  5.times do
    List.create(
      name: Faker::Company.buzzword,
      description: Faker::Lorem.sentence,
      priority: rand(5) + 1,
      board_id: rand(6)
    )
    rand(6).times do
      Task.create(
        name: Faker::Company.buzzword,
        description: Faker::Lorem.paragraph,
        priority: rand(4),
        list_id: rand(6)
      )
    end
  end
end

puts "Finished seeding the database..."