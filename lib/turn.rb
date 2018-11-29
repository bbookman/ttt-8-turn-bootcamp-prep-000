def valid_move?(board, index)
  
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end 

def input_to_index(input)
  return_value = input.to_i - 1
  return return_value
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == "") || (board[index] == " ") || (board[index] == nil)
    return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end

def move(board, index, character =  "X")
    update_array_at_with(board, index, character)
end

def update_array_at_with(array, index, value)
    array[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index )
    move(board, index )
    display_board(board)
    #turn(board)
  else
      puts "Invalid move."
      turn(board)
  end
  
end