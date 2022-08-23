# frozen_string_literal: true

# TO DO: Write the specs that ensures our speed_in_mph method
# successfully converts speed from km/h to mi/h.

require 'speed_in_mph'

describe '#speed_in_mph' do
  it 'returns an error if first argument is not a number' do
    error = 'Please pass a valid speed.'

    expect(speed_in_mph('hey')).to eq(error)
    expect(speed_in_mph([1, 2])).to eq(error)
  end

  it 'returns kph value in mph' do
    expect(speed_in_mph(1)).to eq((1 * 0.6213711922).round(2))
    expect(speed_in_mph(10)).to eq((10 * 0.6213711922).round(2))
    expect(speed_in_mph(99.9)).to eq((99.9 * 0.6213711922).round(2))
    expect(speed_in_mph(130)).to eq((130 * 0.6213711922).round(2))
    expect(speed_in_mph(-50)).to eq((-50 * 0.6213711922).round(2))
  end
end
