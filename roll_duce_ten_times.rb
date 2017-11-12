# Dice
def roll_dice
  dice = Random.rand(1..6)
  "The result of your roll is #{dice}"
end

# Roll the dice multiplier

10.times do
  puts roll_dice
end

puts roll_dice
