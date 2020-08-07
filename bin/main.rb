puts 'welcome to Tic Tac Toe'
puts 'Enter your Name (First Player): '
player_one = gets.chomp
# save the player_one name in this var
puts "#{player_one} your symbol is X "

puts 'Enter your Name (Second Player): '
player_two = gets.chomp
# save the player_one name in this var
puts "#{player_two} your symbol is O "

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def display_board
  puts ["#{board[0]} " '|' "#{board[1]} " '|' "#{board[2]} "]
  puts '---------------'
  puts ["#{board[3]} " '|' "#{board[4]} " '|' "#{board[5]} "]
  puts '---------------'
  puts ["#{board[6]} " '|' "#{board[7]} " '|' "#{board[8]} "]
  puts '---------------'
end

display_board(board)

def input(_index)
  input.to_i - 1
end

def move(board, index, player)
  board[index] = player
end

def position_taken?(board, index)
  if (board[index] == ' ') || (board[index] == '') || board[index].nil?
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
     return true
  end
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
