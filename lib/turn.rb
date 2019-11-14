def display_board(
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts "Display Board"
#board output
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board,index, token)
  board[index] = token
end

def input_to_index(user_input)
   index = user_input.to_i - 1
   return index
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     return false
  elsif board[index] == "X" || board[index] == "O"
     return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)

  until valid_move?(board, index) == true
    puts "please try a valid move. Use an empty location 1 through 9"
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
  end
  move(board, index, character = "X")
  display_board(board)

  if index.between?(0,8) && !position_taken?(board, index)
      puts 'this is a valid move'
    return true
  else
   return false
  end


end
