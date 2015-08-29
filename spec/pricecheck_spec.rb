require 'spec_helper'

describe Pricecheck do
  it 'has a version number' do
    expect(Pricecheck::VERSION).not_to be nil
  end

  it 'calculates with tax' do
    expect(Pricecheck::Charge.new(12500, 30, 1.75, 10).total).to eq(12945)
  end

  it 'calculates without tax' do
    expect(Pricecheck::Charge.new(12500 , 30, 2.9).total).to eq(12904)
  end

  it 'returns the expected fee' do
    check = Pricecheck::Charge.new(12500 , 30, 2.9)
    check.total
    expect(check.fee).to eq(404)
  end
end
