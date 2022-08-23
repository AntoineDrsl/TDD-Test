# TO DO: Write the test that ensure:
# - Our array_to_hash method successfully converts an array to a hash, with the given pattern
# - Our palindrome? method successfully returns whether the given argument is a plindrome or not

require 'manipulate_objects'

describe '#array_to_hash' do
  it 'returns an error if first argument is not an array' do
    error = 'First argument must be an array'

    expect(array_to_hash('hey')).to eq(error)
    expect(array_to_hash(1)).to eq(error)
    expect(array_to_hash(1.1)).to eq(error)
  end

  it 'returns an hash from array' do
    expect(array_to_hash([])).to eq({})
    expect(array_to_hash(['hi', 'ciao', 'salut'])).to eq({key0: 'hi', key1: 'ciao', key2: 'salut'})
  end

  it 'increments key with pattern and match correct element' do 
    initial_array = ['hi', 'ciao', 'salut']
    hash = array_to_hash(initial_array)
    expect(array_to_hash(['hi', 'ciao', 'salut'])).to all(match(/key\d/))

    initial_array.each_with_index do |el, i|
      expect(hash).to include(('key' + i.to_s).to_sym => el)
    end
  end
end

describe '#palindrome?' do
  it 'returns an error if first argument is not a string' do
    error = 'First argument must be a string'

    expect(palindrome?(['hello'])).to eq(error)
    expect(palindrome?(1)).to eq(error)
    expect(palindrome?(1.1)).to eq(error)
  end

  it 'returns a boolean' do
    expect(palindrome?('radar')).to be_a_kind_of(Boolean)
    expect(palindrome?('Hello')).to be_a_kind_of(Boolean)
  end

  it 'returns if word is a palindrome or not' do
    expect(palindrome?('radar')).to eq(true)
    expect(palindrome?('KayAk')).to eq(true)
    expect(palindrome?('Hello')).to eq(false)
    expect(palindrome?('check')).to eq(false)
  end
end
