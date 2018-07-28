require 'rspec'
require_relative 'sudoku'

RSpec.describe "valid board" do
  it 'should tell user they are finished' do
    result = done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                          [6, 7, 2, 1, 9, 5, 3, 4, 8],
                          [1, 9, 8, 3, 4, 2, 5, 6, 7],
                          [8, 5, 9, 7, 6, 1, 4, 2, 3],
                          [4, 2, 6, 8, 5, 3, 7, 9, 1],
                          [7, 1, 3, 9, 2, 4, 8, 5, 6],
                          [9, 6, 1, 5, 3, 7, 2, 8, 4],
                          [2, 8, 7, 4, 1, 9, 6, 3, 5],
                          [3, 4, 5, 2, 8, 6, 1, 7, 9]])
    expect(result).to eq("Finished!")
  end
end

RSpec.describe "valid board with incomplete cells" do
  it 'should tell user to try again' do
    result = done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                          [6, 7, 2, 1, 9, 0, 3, 4, 9],
                          [1, 0, 0, 3, 4, 2, 5, 6, 0],
                          [8, 5, 9, 7, 6, 1, 0, 2, 0],
                          [4, 2, 6, 8, 5, 3, 7, 9, 1],
                          [7, 1, 3, 9, 2, 4, 8, 5, 6],
                          [9, 0, 1, 5, 3, 7, 2, 1, 4],
                          [2, 8, 7, 4, 1, 9, 6, 3, 5],
                          [3, 0, 0, 4, 8, 1, 1, 7, 9]])
    expect(result).to eq("Try again!")
  end
end

RSpec.describe "board with invalid row" do
  it 'should tell user to try again' do
    result = done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 3],
                          [6, 7, 2, 1, 9, 5, 3, 4, 8],
                          [1, 9, 8, 3, 4, 2, 5, 6, 7],
                          [8, 5, 9, 7, 6, 1, 4, 2, 3],
                          [4, 2, 6, 8, 5, 3, 7, 9, 1],
                          [7, 1, 3, 9, 2, 4, 8, 5, 6],
                          [9, 6, 1, 5, 3, 7, 2, 8, 4],
                          [2, 8, 7, 4, 1, 9, 6, 3, 5],
                          [3, 4, 5, 2, 8, 6, 1, 7, 9]])
    expect(result).to eq("Try again!")
  end
end

RSpec.describe "board with invalid column" do
  it 'should tell user to try again' do
    result = done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                          [6, 7, 2, 1, 9, 5, 3, 4, 8],
                          [1, 9, 8, 3, 4, 2, 5, 6, 7],
                          [8, 5, 9, 7, 6, 2, 4, 1, 3],
                          [4, 2, 6, 8, 5, 3, 7, 9, 1],
                          [7, 1, 3, 9, 2, 4, 8, 5, 6],
                          [9, 6, 1, 5, 3, 7, 2, 8, 4],
                          [2, 8, 7, 4, 1, 9, 6, 3, 5],
                          [3, 4, 5, 2, 8, 6, 1, 7, 9]])
    expect(result).to eq("Try again!")
  end
end

RSpec.describe "board with invalid 3x3 block" do
  it 'should tell user to try again' do
    result = done_or_not([[1, 2, 3, 4, 5, 6, 7, 8, 9],
                          [2, 3, 4, 5, 6, 7, 8, 9, 1],
                          [3, 4, 5, 6, 7, 8, 9, 1, 2],
                          [4, 5, 6, 7, 8, 9, 1, 2, 3],
                          [5, 6, 7, 8, 9, 1, 2, 3, 4],
                          [6, 7, 8, 9, 1, 2, 3, 4, 5],
                          [7, 8, 9, 1, 2, 3, 4, 5, 6],
                          [8, 9, 1, 2, 3, 4, 5, 6, 7],
                          [9, 1, 2, 3, 4, 5, 6, 7, 8]])
    expect(result).to eq("Try again!")
  end
end
