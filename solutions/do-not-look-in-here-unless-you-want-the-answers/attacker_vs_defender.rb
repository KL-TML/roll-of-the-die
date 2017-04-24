attacker_armies = 5
defender_armies = 5

while attacker_armies > 1 && defender_armies > 0

  puts
  puts "New Battle Begins!"
  puts "=================="
  puts
  puts "Armies before the battle:"
  puts "Attacker: #{attacker_armies} armies"
  puts "Defender: #{defender_armies} armies"

  attacker_die_1 = Random.rand(5) + 1
  defender_die_1 = Random.rand(5) + 1

  attacker_die_2 = attacker_armies >  2 ? Random.rand(5) + 1 : nil
  attacker_die_3 = attacker_armies >  3 ? Random.rand(5) + 1 : nil
  defender_die_2 = defender_armies >= 2 ? Random.rand(5) + 1 : nil

  attacker_dice = [attacker_die_1, attacker_die_2, attacker_die_3].compact.sort.reverse
  defender_dice = [defender_die_1, defender_die_2].compact.sort.reverse

  puts
  print "Attacker roles #{attacker_dice[0]}"
  print ", #{attacker_dice[1]}" if attacker_dice[1]
  print ", #{attacker_dice[2]}" if attacker_dice[2]
  puts
  print "Defender roles #{defender_dice[0]}"
  print ", #{defender_dice[1]}" if defender_dice[1]
  puts
  puts

  if attacker_dice[0] > defender_dice[0]
    puts "Attacker wins a battle: #{attacker_dice[0]} beats #{defender_dice[0]}"
    defender_armies -= 1
  else
    puts "Defender wins a battle: #{defender_dice[0]} beats #{attacker_dice[0]}"
    attacker_armies -= 1
  end

  if attacker_dice[1] && defender_dice[1]
    if attacker_dice[1] > defender_dice[1]
      puts "Attacker wins a battle: #{attacker_dice[1]} beats #{defender_dice[1]}"
      defender_armies -= 1
    else
      puts "Defender wins a battle: #{defender_dice[1]} beats #{attacker_dice[1]}"
      attacker_armies -= 1
    end
  end

  puts
  puts "Armies after the battle:"
  puts "Attacker: #{attacker_armies} armies"
  puts "Defender: #{defender_armies} armies"
  puts

end

puts
puts "Final Outcome"
puts "============="
puts
puts "Attacker's final army count: #{attacker_armies}"
puts "Defender's final army count: #{defender_armies}"
puts

if defender_armies == 0
  puts "Attacker takes the country!"
else
  puts "Defender retains their country!"
end

puts
