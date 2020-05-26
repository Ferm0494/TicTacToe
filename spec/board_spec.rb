require './lib/board'

describe Board do
  board = Board.new
  describe '#who_won' do
    it 'Has to give true if player 1 -2 won ' do
      expect(board.who_won(1)).to eql true
      expect(board.who_won(2)).to eql true
    end
    it ' Has to return false if neither 1-2' do
      expect(board.who_won(3)).to eql false
    end

    it 'Gives error if no param is being sent..' do
      expect { board.who_won }.to raise_error(ArgumentError)
    end
  end

  describe '#player' do
    it 'Returns true if its player1 turn ' do
      expect(board.player?(true)).to eql true
    end
    it 'Returns false if its player2 turn' do
      expect(board.player?(false)).to eql false
    end

    it 'Gives error if no param is being sent..' do
      expect { board.player? }.to raise_error(ArgumentError)
    end
  end

  describe '#validating_input' do
    it 'Returns true if input is 1-9' do
      expect(board.validating_input?(1)).to eql true
    end

    it 'Returns true if input is 1-9' do
      expect(board.validating_input?(9)).to eql true
    end

    it 'Returns false if input is NOT  in 1-9' do
      expect(board.validating_input?(0)).to eql false
    end

    it 'Returns false if input is  NOT in 1-9' do
      expect(board.validating_input?(11)).to eql false
    end

    it 'Returns false if input not integer' do
      expect(board.validating_input?('word')).to eql false
    end

    it 'Gives error if no param is being sent..' do
      expect { board.validating_input? }.to raise_error(ArgumentError)
    end
  end

  describe '#change_player' do
    it 'Returns false if param is true' do
      expect(board.change_player?(false)).to eql true
    end

    it 'Returns false if param is true' do
      expect(board.change_player?(true)).to eql false
    end

    it 'Gives error if no param is being sent..' do
      expect { board.change_player? }.to raise_error(ArgumentError)
    end
  end
end
