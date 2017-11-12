roll_counter = 0 #start the counter at zero outside of the loop

(1..6).each do |first_roll|
  (1..6).each do |second_roll|
    roll_counter += 1 #this will increase the counter everytime permutation cycles through
    puts "Dice Roll: #{first_roll}, #{second_roll} Total: #{first_roll + second_roll}"
  end
end

puts "There are #{roll_counter} possible permutations."
