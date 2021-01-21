require 'tdd'
require 'rspec'

describe "remove_dups" do 
  it 'removes duplicates in an array' do 
    expect(remove_dups([1, 1, 2, 3])).to eq([1, 2, 3])
  end
end

describe Array do
  subject(:arr){Array.new([-1, 0, 2, -2, 1])}

  describe "two_sum" do 
    it "returns all pairs of positions where elements sum to 0" do
      expect(arr.two_sum).to eq([[0,4],[2,3]])
    end

  end
end

describe "my_transpose" do 
  subject(:arr){[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  it "will convert the rows to columns in a 2D array" do 
      expect(my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end