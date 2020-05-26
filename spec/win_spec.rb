# spec :board_spec.rb
require_relative '../lib/win'
require_relative '../lib/board'

describe '#win?' do
  let(:win_combo) { Win.new }
  let(:board) { Board.new }

  it "return true if there's a vertical winning combination" do
    board.push(0, 'X', 0)
    board.push(3, 'X', 0)
    board.push(6, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a vertical winning combination" do
    board.push(1, 'X', 0)
    board.push(4, 'X', 0)
    board.push(7, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a vertical winning combination" do
    board.push(2, 'X', 0)
    board.push(5, 'X', 0)
    board.push(8, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a horizontal winning combination" do
    board.push(3, 'O', 0)
    board.push(4, 'O', 0)
    board.push(5, 'O', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a horizontal winning combination" do
    board.push(0, 'O', 0)
    board.push(1, 'O', 0)
    board.push(2, 'O', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a horizontal winning combination" do
    board.push(6, 'O', 0)
    board.push(7, 'O', 0)
    board.push(8, 'O', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a diagonal winning combination" do
    board.push(2, 'X', 0)
    board.push(4, 'X', 0)
    board.push(6, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return true if there's a diagonal winning combination" do
    board.push(0, 'X', 0)
    board.push(4, 'X', 0)
    board.push(8, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(true)
  end

  it "return false if there's no winning combination" do
    board.push(2, 'X', 0)
    board.push(1, 'X', 0)
    board.push(6, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(false)
  end

  it "return false if there's no winning combination" do
    board.push(0, 'X', 0)
    board.push(1, 'X', 0)
    board.push(2, 'O', 0)
    board.push(3, 'O', 0)
    board.push(4, 'O', 0)
    expect(win_combo.win?(board.positions)).to eql(false)
  end

  it "return false if there's a DRAW" do
    board.push(0, 'X', 0)
    board.push(1, 'X', 0)
    board.push(2, 'O', 0)
    board.push(3, 'O', 0)
    board.push(4, 'O', 0)
    board.push(5, 'X', 0)
    board.push(6, 'X', 0)
    board.push(7, 'O', 0)
    board.push(8, 'X', 0)
    expect(win_combo.win?(board.positions)).to eql(false)
  end
end
