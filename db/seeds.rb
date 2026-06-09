Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )

  rand(1..5).times do
    Review.create!(
      rating: rand(0..5),
      content: Faker::Restaurant.review,
      restaurant: restaurant
    )
  end
end
