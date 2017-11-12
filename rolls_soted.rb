#Putting the rolls into an array and sorting the values

total_rolls = []

10.times.each do
  total_rolls << Random.rand(1..6)
end

total_rolls.sort!

total_rolls.each do |number|
  puts "The result of your roll is #{number}"
end
