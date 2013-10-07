# g_snakes = [
#   ["Salar", "Dan", "Alek"],
#   ["Natalie", "Laura", "Brantley"],
#   ["Taylor", "Ryan", "Brandon"],
#   ["Cricket", "Jeff", "Marion"],
#   ["Charles", "Ken", "Thomas"],
#   ["Annie", "Jenny", "Jonathan"],
#   ["Paul", "Steven", "Carter"],
#   ["Robert", "Gary", "Daniel"]
# ]

g_snakes = ["Salar", "Dan", "Alek", "Natalie", "Laura", "Brantley", "Taylor", "Ryan", "Brandon", "Cricket", "Jeff", "Marion", "Robert", "Gary", "Daniel", "Charles", "Ken", "Thomas", "Steven", "Annie", "Jenny", "Jonathan", "Paul", "Carter"]

fox_squirrels = []
fs_group = []
gs_group = []

boot_counter = 0
group_counter = 1

puts "Group #{group_counter}"

input = nil
until input == "done"
  input = gets.chomp
  fox_squirrels << input unless input == "done"
  boot_counter += 1
  if boot_counter % 3 == 0
    group_counter += 1
    puts "Group #{group_counter}" unless group_counter == 9
  end
end



g_snakes.shuffle.each_slice(3){ |group| gs_group << group}

fox_squirrels.each_slice(3) { |group| fs_group << group }
fs_group[-2] << fs_group[-1][0]
fs_group.pop

  puts ""
  puts "-------------------------"



(0..6).each do |n|
  puts ""
  puts "Group #{(n+1)}:"
  puts "FS: #{fs_group[n][0][0].capitalize + fs_group[n][0][1..-1]}, #{fs_group[n][1][0].capitalize + fs_group[n][1][1..-1]}, #{fs_group[n][2][0].capitalize + fs_group[n][2][1..-1]}"
  puts "GS: #{gs_group[n][0]}, #{gs_group[n][1]}, #{gs_group[n][2]}"
end

  puts ""
  puts "Group #{(8)}:"
  puts "FS: #{fs_group[7][0][0].capitalize + fs_group[7][0][1..-1]}, #{fs_group[7][1][0].capitalize + fs_group[7][1][1..-1]}, #{fs_group[7][2][0].capitalize + fs_group[7][2][1..-1]}, #{fs_group[7][3][0].capitalize + fs_group[7][3][1..-1]}"
  puts "GS: #{gs_group[7][0]}, #{gs_group[7][1]}, #{gs_group[7][2]}"


# (0..6).each do |n|
#   puts ""
#   puts "Group #{(n+1)}:"
#   puts "FS: #{fs_group[n][0][0].capitalize + fs_group[n][0][1..-1]}, #{fs_group[n][1][0].capitalize + fs_group[n][1][1..-1]}, #{fs_group[n][2][0].capitalize + fs_group[n][2][1..-1]}"
#   puts "GS: #{g_snakes[n][0]}, #{g_snakes[n][1]}, #{g_snakes[n][2]}"
# end

#   puts ""
#   puts "Group #{(8)}:"
#   puts "FS: #{fs_group[7][0][0].capitalize + fs_group[7][0][1..-1]}, #{fs_group[7][1][0].capitalize + fs_group[7][1][1..-1]}, #{fs_group[7][2][0].capitalize + fs_group[7][2][1..-1]}, #{fs_group[7][3][0].capitalize + fs_group[7][3][1..-1]}"
#   puts "GS: #{g_snakes[7][0]}, #{g_snakes[7][1]}, #{g_snakes[7][2]}"

  puts ""
  puts "-------------------------"
  puts ""

