# frozen_string_literal: true

require_relative 'code.rb'

describe '#caesar_cipher' do
  it 'returns a string with characters pushed 3 positions down in the alphabet' do
    @caesar_cipher = caesar_cipher('abcwyz', 1)
    @caesar_cipher1 = caesar_cipher('abcwyz', 26)
    @caesar_cipher2 = caesar_cipher('ABCWYZ', 2)
    @caesar_cipher3 = caesar_cipher('ABCWYZ', 26)

    expect(caesar_cipher('abcwyz', 2)).to eq('cdeyab')
    expect(caesar_cipher('abcwyz', 26)).to eq('abcwyz')
    expect(caesar_cipher('ABCWYZ', 2)).to eq('CDEYAB')
    expect(caesar_cipher('ABCWYZ', 26)).to eq('ABCWYZ')
  end
end
