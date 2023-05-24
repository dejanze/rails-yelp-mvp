
puts "cleaning db.."

Restaurant.destroy_all

puts "populating db.."

5.times do
  new_restaurant = Restaurant.new(name: Faker::TvShows::RuPaul.queen,
                                  address: Faker::Address.full_address,
                                  phone_number: Faker::Alphanumeric.alpha(number: 10),
                                  category: %w[chinese italian japanese french belgian].sample)
  if new_restaurant.save
    puts "#{new_restaurant.id} was created.."
  end
end

puts "done"
