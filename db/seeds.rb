5.times do
  Board.create(name: Faker::Dessert.topping)
end

puts "Finished seeding the database..."