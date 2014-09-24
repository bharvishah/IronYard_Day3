numbers =[3,23,10,2,8,100]

# say HIGH! if number is higher than 20
# say low if number is lower then 20
puts numbers.inspect
numbers.each do |num|
  if num > 20
    puts "#{num} is HIGH!"
  else
    p "#{num} is low"
  end
end
