module Calculators
  class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?
      return numbers.to_i if numbers.to_i.to_s == numbers
      numbers.split(',').map(&:to_i).reduce(0, :+)
    end
  end
end
