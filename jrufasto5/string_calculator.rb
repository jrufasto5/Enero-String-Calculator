class StringCalculator

	def self.add(string)
	 	numbers = string.gsub('\n', ',').split(',').map(&:to_i)
	 	delimiter = string.match(%r{^\/\/(.+)\\n}) && $1 || ','
	 	numbers = string.split(%r{[\\n, #{delimiter}]}).map(&:to_i)

	 	negatives = numbers.select {|number| number < 0}
 	 	raise "No se permiten negativos" if negatives.any?

	 	numbers.inject(0) {|total, number| total += number }
 	end

end
