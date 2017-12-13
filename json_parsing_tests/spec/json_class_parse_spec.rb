require 'spec_helper'

# describe ExchngRts do
#
#   before(:each) do
#     # link pages together for tests
#     # @exchngrts = ExchngRts.new
#   end
#
#
#
#
#
# end

describe 'Testing the Exchange rates' do
  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'should be a hash' do
    # Expect the values to be in a hash format
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

    it 'should return Euro as the base currency' do
      # Test for base currency is Euro
      expect(@exchange_rates.json_file.first[1]).to eq('EUR')
    end

    it 'should show todays date for current exchange rate' do
      # Test for correct date shown i.e. probably todays date but will pass existing date for test
      expect(@exchange_rates.json_file['date']).to eq('2017-07-26')
    end

    it 'should return a true of false value on whether the correct number of currencies is listed' do
      # Tests for the correct number of currencies listed
      expect(@exchange_rates.json_file['rates'].count).to eq(31)
    end

    it 'should show that no exchange rate has a negative value, only positive numbers' do
      # No negative value of exchange rate
      expect(@exchange_rates.json_file['rates'].value?).to be > 0
    end

end
