g_snakes = [
  ["Salar", "Dan", "Alek"],
  ["Natalie", "Laura", "Brantley"],
  ["Ken", "Ryan", "Steven"],
  ["Paul", "Annie", "Jenny"],
  ["Thomas", "Taylor", "Marion"],
  ["Cricket", "Brandon", "JTR"],
  ["Carter", "Jeff", "Charles"],
  ["Robert", "Gary", "Daniel"]
]

fox_squirrels = []
groups = []

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

fox_squirrels.each_slice(3) { |group| groups << group }
groups[-2] << groups[-1][0]
groups.pop

(0..7).each do |n|
  puts ""
  puts "Group #{(n+1)}:"
    puts "#{groups[n][0]}, #{groups[n][1]}, #{groups[n][2]}"
    puts "#{g_snakes[n][0]}, #{g_snakes[n][1]}, #{g_snakes[n][2]}"
end

  puts ""
  puts "Group #{(8)}:"
  puts "#{groups[7][0]}, #{groups[7][1]}, #{groups[7][2]}, #{groups[7][3]}"
  puts "#{g_snakes[7][0]}, #{g_snakes[7][1]}, #{g_snakes[7][2]}"

  puts ""

