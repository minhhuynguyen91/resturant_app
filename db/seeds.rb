# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Section.all.size == 0
   puts "Put the data section"
   %w[Breakfast Lunch Dinner Drinks Cuisine].each do |name|
     Section.create!(:name => name)
   end
else
   puts "Nothing more to add"
end

if FoodItem.all.size == 0
  10.times do |i|
    FoodItem.create!(
      :name => Faker::Name.name,
      :description => Faker::Food.ingredient,
      :price => Faker::Number.between(10, 50),
      :section_id => Faker::Number.between(1, 4),
      :image_url => Faker::LoremPixel.image("50x60"),
      :view => Faker::Number.between(1, 20)
    )
  end
end