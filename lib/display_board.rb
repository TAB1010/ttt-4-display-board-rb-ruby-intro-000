require_relative"../lib/display_board.rb"

describe "#display_board in 'lib/display_board.rb" do
  context 'various game situations' do
    it 'prints a blank board when the board array is empty' do
      board = [" "," "," "," "," "," "," "," "," "]

      output = capture_puts{ display_board(board) }
      rows = output.split("\n")

      expect(rows[0]).to eq("   |   |   ")
      expect(rows[1]).to eq("-----------")
      expect(rows[2]).to eq("   |   |   ")
      expect(rows[3]).to eq("-----------")
      expect(rows[4]).to eq("   |   |   ")
    end
