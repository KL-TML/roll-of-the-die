total_rolls = []

2.times.each do
  total_rolls << Random.rand(1..6)
end


puts "You rolled #{total_rolls[0]} and #{total_rolls[1]}"
if total_rolls[0] == total_rolls[1]
  puts "DOUBLES!"
end
puts "Your total is #{total_rolls.sum}"
