require 'rails_helper'

RSpec.describe Calculators::StringCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = Calculators::StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      calculator = Calculators::StringCalculator.new
      expect(calculator.add('1')).to eq(1)
    end
  end
end

