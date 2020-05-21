class Board
  @@positions

  def initialize()
    @@positions = (1..9).to_a
  end

  def show_board()
    puts ":-----TICTACTOE-----: \n \n"
    puts "#{@@positions[0]} | #{@@positions[1]}  | #{@@positions[2]} \n \n"
    puts '==========='
    puts "\n#{@@positions[3]} | #{@@positions[4]}  | #{@@positions[5]} \n \n"
    puts '==========='
    puts "\n#{@@positions[6]} | #{@@positions[7]}  | #{@@positions[8]} \n \n"
  end

  def push(index, value)
    @@positions[index] = value
  end

  def positions
    @@positions
  end

  # def push(index)
  #     @@positions[index]=
  # end
end
