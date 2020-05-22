# rubocop:disable Style/ClassVars
class Board
  def initialize()
    @@positions = (1..9).to_a
  end

  def show_board()
    @table = ":-----TICTACTOE-----: \n \n"
    @table += "#{@@positions[0]} | #{@@positions[1]}  | #{@@positions[2]} \n \n"
    @table += '==========='
    @table += "\n#{@@positions[3]} | #{@@positions[4]}  | #{@@positions[5]} \n \n"
    @table += '==========='
    @table += "\n#{@@positions[6]} | #{@@positions[7]}  | #{@@positions[8]} \n \n"
    @table
  end

  def push(index, value)
    @@positions[index] = value
  end

  def positions
    @@positions
  end
end
# rubocop:enable Style/ClassVars
