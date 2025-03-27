module Calculators
	class NegativeNumberError < StandardError
		def initialize(negatives)
			super("negative numbers are not allowed: #{negatives.join(', ')}")
		end
	end
end
