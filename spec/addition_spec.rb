require './addition.rb'

RSpec.describe Addition do
  it 'creates a Addition class' do
    addition = Addition.new
    expect(addition).to be_kind_of(Addition)
  end

  it 'has #add_numbers method' do
    addition = Addition.new
    expect(addition).to respond_to(:add_numbers)
  end

  it '#add_numbers should accept string arguments' do
    addition = Addition.new
    allow(Addition).to receive(:new).and_return(addition)
    expect(addition.add_numbers("")).to eq 0
  end

  it '#add_numbers should return message for negative numbers' do
    addition = Addition.new
    allow(Addition).to receive(:new).and_return(addition)
    expect(addition.add_numbers("-1;-2")).to eq("Negative numbers are not allowed -1,-2")
  end

  it '#add_numbers should return sum of the positive integers' do
    addition = Addition.new
    allow(Addition).to receive(:new).and_return(addition)
    expect(addition.add_numbers("//;\n1;5;6")).to eq(12)
  end
end