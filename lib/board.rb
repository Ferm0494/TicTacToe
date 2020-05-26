require 'colorize'
class Board
  def initialize()
    @positions = (1..9).to_a
  end

  def show_board()
    @table = ":-----TICTACTOE-----: \n \n".bold.magenta
    @table += "#{@positions[0]} | #{@positions[1]}  | #{@positions[2]} \n \n"
    @table += '==========='
    @table += "\n#{@positions[3]} | #{@positions[4]}  | #{@positions[5]} \n \n"
    @table += '==========='
    @table += "\n#{@positions[6]} | #{@positions[7]}  | #{@positions[8]} \n \n"
    @table
  end

  def who_won(index)
    return true if index.eql? 1 or index.eql? 2

    false
  end

  def player?(player1)
    return true if player1

    false
  end

  def validating_input?(input)
    return true if input.is_a? Numeric and positions.include? input

    false
  end

  def push(index, value, count)
    return false if index > 9
    return false if index.negative?

    @positions[index] = value
    count + 1
  end

  def change_player?(player)
    !player
  end

  attr_reader :positions
end
