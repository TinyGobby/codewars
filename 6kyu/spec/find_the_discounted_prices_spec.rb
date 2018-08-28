require 'find_the_discounted_prices'

describe 'find_discounted' do
  it 'returns single discounted price' do
    expect(find_discounted('15 20')).to eq '15'
    expect(find_discounted('0 0')).to eq '0'
  end

  it 'ignores incorrect single discounted price' do
    expect(find_discounted('80 100')).to eq ""
  end

  it 'returns multiple discounted prices when provided in pairs' do
    expect(find_discounted('15 20 60 80')).to eq '15 60'
  end

  it 'returns multiple and ignores incorrect prices when provided in pairs' do
    expect(find_discounted('15 20 60 80 90 100')).to eq '15 60'
  end

  it 'ignores empty string' do
    expect(find_discounted('')).to eq ''
  end

  it 'returns correctly with multiple pairs sorted from smaller to bigger' do
    expect(find_discounted('15 20 60 75 80 100')).to eq '15 60 75'
  end
end
