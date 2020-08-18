WINS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8], # Horizontal Winnings
  [0, 3, 6], [1, 4, 7], [2, 5, 8], # Vertical Winnings
  [2, 4, 6], [0, 4, 8] # Diagonal winnings.
].freeze
class GameBoard
  attr_reader :board, :winner
  def initialize
    super
    @board = (1..9).to_a
    @winner = nil
  end

  def display_board
    "        #{@board[0]} | #{@board[1]} | #{@board[2]}
        -----------
        #{@board[3]} | #{@board[4]} | #{@board[5]}
        -----------
        #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def position_taken?(board, idx)
    if board[idx] == 'X' || board[idx] == 'O'
      true
    else
      false
    end
  end

  def valid_move?(board, position)
    idx = position - 1
    if idx.between?(0, 8) && !position_taken?(board, idx)
      true
    else
      false
    end
  end

  def check_for_winner(player)
    WINS.each do |moves|
      @winner = player if moves.all? { |idx| @board[idx] == player.player_symbol }
    end
    @winner
  end

  def board_filled?(board)
    moves = board.any? { |el| el.is_a?(Integer) }
    moves = if moves
              false
            else
              true
            end
    moves
  end

  def update_board(position, symbol)
    @board[position - 1] = symbol
    @board
  end
end
