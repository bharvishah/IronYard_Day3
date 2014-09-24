numbers = [3,67,79,80,10,15]

puts numbers.inspect
numbers.each do |num|
  puts "#{num + 3} is a great number"
  if num == 80
    p "Jackpot !"
  end
end
p numbers[0] # the array nums did not change
