require 'find_the_discounted_prices'

describe 'find_discounted' do
  it 'returns single discounted price' do
    expect(find_discounted("15 20")).to eq "15"
  end

  it 'ignores incorrect single discounted price' do
    expect(find_discounted("80 100")).to eq nil
  end
end
