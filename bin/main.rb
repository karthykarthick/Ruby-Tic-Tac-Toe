require_relative '../lib/board'
require_relative '../lib/players.rb'
require 'colorize'
require 'tty-font'
require 'tty-prompt'

font = TTY::Font.new(:standard)
puts font.write('TicTacToe')

puts 'Welcome To TicTacToe'.upcase.colorize(:cyan)
puts
puts 'To play the game, follow instructions below.'
puts '---------------------------------------'
puts '|------------INSTRUCTIONS----------------|'
puts '1. Both players should enter their names.'
puts '2. A TicToe board will presented to you with numbers 1 through 9.'
puts "3. Enter numbers 1 through 9 that corresponds to the position on the board that you'd like to occupy."
puts
puts 'May the force be with you.'.upcase.colorize(:magenta)
puts

prompt = TTY::Prompt.new

player1_name = prompt.ask("Player 1, What's your name?")
player2_name = prompt.ask("Player 2, What's your name?")

system('clear')

turn = 0
player = nil

# Object Creation.
player_one = Player.new(player1_name, 'X')
player_two = Player.new(player2_name, 'O')
game = GameBoard.new

def prompt_input(current_player)
  puts "#{current_player.player_name} make your move.".colorize(:green)
  player_move = gets.strip.to_i
  player_move
end

def invalid_move(game, move_made, player)
  until game.valid_move?(game.board, move_made)
    puts 'Invalid Move. Try again.'.upcase.colorize(:red)
    puts game.display_board
    repeat_move = prompt_input(player)
    if game.valid_move?(game.board, repeat_move)
      game.update_board(repeat_move, player.player_symbol)
      break
    end
  end
end

def switch_turn(turn, player1, player2)
  current_player = if turn.even?
                     player1
                   else
                     player2
                   end
  current_player
end

puts game.display_board
while turn <= 8
  player = switch_turn(turn, player_one, player_two)
  move_made = prompt_input(player)
  winner = nil

  system('clear')

  if game.valid_move?(game.board, move_made)
    game.update_board(move_made, player.player_symbol)
    winner = game.check_for_winner(player)
  else
    invalid_move(game, move_made, player)
  end
  puts game.display_board

  if winner
    puts "#{winner.player_name} is the winner."
    break
  elsif game.board_filled?(game.board)
    puts "It's a draw guys."
    break
  end
  turn += 1
end
