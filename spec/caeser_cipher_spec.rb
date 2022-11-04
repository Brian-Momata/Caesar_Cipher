require './caeser_cipher'

describe '#cipher' do
  it 'returns a string with letters shifted x positions down' do
    expect(cipher('boy', 2)).to eql('zmw')
  end
  
  it 'returns an x shifted sentence' do
    expect(cipher('This is a good boy', 1)).to eql('Sghr hr z fnnc anx')
  end

  it 'works with strings that have symbols' do
    expect(cipher('cat!', 1)).to eql('bzs!')
  end
end