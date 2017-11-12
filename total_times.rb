# roll_counter = 0 #start the counter at zero outside of the loop
# total_permutations = Hash.new(0)
#
#
# (1..6).each do |first_roll|
#   (1..6).each do |second_roll|
#     roll_counter += 1 #this will increase the counter everytime permutation cycles through
#     puts "Dice Roll: #{first_roll}, #{second_roll} Total: #{first_roll + second_roll}"
#       total_permutations[total] += 1
#   end
# end
#
# puts "There are #{roll_counter} possible permutations."
# puts "~" * 15
#
# total_permutations.keys.each { |k|
#   puts "#{k} occurs #{total_permutations[k]} times."
# }

roll_counter = 0
total_permutations = Hash.new(0)

(1..6).each do |first_roll|
  (1..6).each do |second_roll|
    roll_counter += 1
    total = first_roll + second_roll
    puts "Dice Roll: #{first_roll}, #{second_roll}  Total: #{total}"
      total_permutations[total] += 1
  end
end
puts "There are #{roll_counter} possible permutations."
puts "----------------"

total_permutations.keys.each { |k|
  puts "#{k} occurs #{total_permutations[k]} times."
}
