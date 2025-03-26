module Calculators
  class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?

      delimiter = /,|\n/
      if numbers.start_with?('//')
        delimiter, numbers = extract_custom_delimiter(numbers)
      end

      nums = numbers.split(delimiter)
      negatives = nums.select { |n| n.to_i < 0 }
      raise "negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?

      nums.map(&:to_i).reduce(0, :+)
    end

    private

    def extract_custom_delimiter(numbers)
      delimiter_spec, numbers = numbers[2..].split("\n", 2)
      delimiter = Regexp.new(Regexp.escape(delimiter_spec))
      [delimiter, numbers]
    end
  end
end
