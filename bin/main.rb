puts 'welcome to Tic Tac Toe'
puts 'Enter your Name (First Player): '
player_one = gets.chomp
# save the player_one name in this var
puts "#{player_one} your symbol is X "

puts 'Enter your Name (Second Player): '
player_two = gets.chomp
# save the player_one name in this var
puts "#{player_two} your symbol is O "
turn = 1
while turn <= 9
  puts '-------------'
  puts '| a | b | c |'
  puts '| d | e | f |'
  puts '| g | h | i |'
  puts '-------------'
end

puts "#{player_one} It is Your Turn, Select the position"
# we will save the position and sign
# we will update the board and display it
# we will check the conditions
puts "#{player_two} It is Your Turn, select the position"
# we will save the position and sign
# we will update the board and display it
# we will check the conditions

puts 'player_one or player_two is winner! or it is draw'
puts 'Do you want to play again (Y/N)?'
replay = gets.chomp
puts replay
# proceed depending on the user input either to terminate the game or rematch
