class StringCalculator

	def self.add(string)
 	string.split(',').map(&:to_i).inject(0) {|total, number| total += number }
 	numbers = string.gsub('\n', ',').split(',').map(&:to_i)
 	numbers.inject(0) {|total, number| total += number }
 	end

end
