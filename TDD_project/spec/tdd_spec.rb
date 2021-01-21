require 'tdd'
require 'rspec'

describe "remove_dups" do 
  it 'removes duplicates in an array' do 
    expect(remove_dups([1, 1, 2, 3])).to eq([1, 2, 3])
  end
end

describe "two_sum" do 
  
end