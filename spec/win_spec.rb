# spec :board_spec.rb
require './lib/win'

describe "#win?" do
  let(:win_combo) {Win.new}
  let (:board) {(1..9).to_a}

  it "return true if there's a vertical winning combination" do
    board[0] = "X"
    board[3] = "X"
    board[6] = "X"
    expect(win_combo.win?(board)).to eql(true)
  end

  it "return true if there's a horizontal winning combination" do
    board[3] = "X"
    board[4] = "X"
    board[5] = "X"
    expect(win_combo.win?(board)).to eql(true)
  end

  it "return true if there's a diagonal winning combination" do
    board[2] = "O"
    board[4] = "O"
    board[6] = "O"

    expect(win_combo.win?(board)).to eql(true)
  end

  it "return false if there's no winning combination" do
    board[2] = "O"
    board[1] = "O"
    board[6] = "O"
    expect(win_combo.win?(board)).to eql(false)
  end
end
