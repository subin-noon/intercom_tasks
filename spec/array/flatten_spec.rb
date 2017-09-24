require_relative '../../array/flatten.rb'

describe Array do

  it "should return empty array in case of input empty array" do
    input = []
    expect(input.flatten).to eql(input)
  end

  it "should return same array if it's already a flat array" do
    input = [1, 2, 3, 4]
    expect(input.flatten).to eql(input)
  end

  it "should return same array if it's already a flat array with multiple types of elements" do
    input = [1, "2", Class.new, {}, nil]
    expect(input.flatten).to eql(input)
  end

  it "should return single level flattend array" do
    input = [1, "2", {}, nil, [1, 2, 3, 4]]
    output = [1, "2", {}, nil, 1, 2, 3, 4]
    expect(input.flatten).to eql(output)
  end

  it "should return multiple level flattend array" do
    input = [1, [2, 3], [4, [5, 6, 7]]]
    output = [1, 2, 3, 4, 5, 6, 7]
    expect(input.flatten).to eql(output)
  end
  
end