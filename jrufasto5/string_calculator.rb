class StringCalculator

	def self.add(string)
	 	numbers = string.gsub('\n', ',').split(',').map(&:to_i)
	 	delimiter = string.match(%r{^\/\/(.+)\\n}) && $1 || ','
	 	numbers = string.split(%r{[\\n, #{delimiter}]}).map(&:to_i)
	 	numbers.inject(0) {|total, number| total += number }
 	end

end
