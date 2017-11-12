# Dice
def roll_dice
  dice = Random.rand(1..6)
  "The result of your roll is #{dice}"
end

puts roll_dice
