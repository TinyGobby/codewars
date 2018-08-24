require 'discover_the_original_price'

describe 'discover_original_price' do
  it 'returns the original price' do
    expect(discover_original_price(75,25)).to eq 100
    expect(discover_original_price(25,75)).to eq 100
    expect(discover_original_price(75.75,25)).to eq 101
    expect(discover_original_price(373.85,11.2)).to eq 421
    expect(discover_original_price(458.2,17.13)).to eq 552.91
  end
end
