puts "Welcome to TicTacToe\n\n"
puts 'Who is the first player?'
player1 = gets.chomp
# save the name of the player 1
puts "#{player1} your symbol is O \n\n"
# assign a simbol to player 1
puts 'Who is the second player?'
player2 = gets.chomp
# save the name of the player 2
puts "#{player2} your symbol is X \n\n"
# assign a simbol to player 2

9.times do
  puts 'a | b | c'
  puts 'd | e | f'
  puts 'g | h | i'

  puts "#{Player1} choose a position \n\n"
  gets.chomp
  # We override and display the board
  # Verify win conditions
  puts "#{Player2} choose a position \n\n"
  gets.chomp
  # We override and display the board
  # Verify win conditions
end
