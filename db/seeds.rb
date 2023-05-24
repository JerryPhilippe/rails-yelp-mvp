puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "2439239428", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "7 Boundary St, London E2 7JE", phone_number: "2439239428", category: "italian"}
aka = {name: "Aka", address: "7 Boundary St, London E2 7JE", phone_number: "2439239428", category: "french"}
koko =  {name: "Koko", address: "7 Boundary St, London E2 7JE", phone_number: "2439239428", category: "japanese"}
yoyo =  {name: "Yoyo", address: "7 Boundary St, London E2 7JE", phone_number: "2439239428", category: "french"}

[dishoom, pizza_east, aka, koko, yoyo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
