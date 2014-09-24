places = ["Santa Monica",
          "Nevada City",
          "San Sebastian",
          "San Francisco",
          "Arcata",
          "Portland",
          "Houston"]

# places.each do |place|
#   if place.length >= 10
#     puts "#{place} is a Terrible place to live!"
#   else
#     puts "#{place} is cool !"
#   end
# end

places_begin_with_S = []
places.each do |place|
  if place.include?(" ")
    puts "#{place} has two words"
  end
  if place.chars[0] == "S"
    p "Begins with S"
    places_begin_with_S << place
  end

end
p "Number of places that begins with S are #{places_begin_with_S.count}"
