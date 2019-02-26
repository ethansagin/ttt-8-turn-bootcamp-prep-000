board = [" "," "," "," "," "," "," "," "," "]

def display_board(x)
  puts " #{x[0]} | #{x[1]} | #{x[2]} "
  puts "-----------"
  puts " #{x[3]} | #{x[4]} | #{x[5]} "
  puts "-----------"
  puts " #{x[6]} | #{x[7]} | #{x[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    false 
  elsif index.between?(0, 8)
    true
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end