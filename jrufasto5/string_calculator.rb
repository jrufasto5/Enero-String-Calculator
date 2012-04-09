class StringCalculator

	def self.add(string)
 	string.split(',').map(&:to_i).inject(0) {|total, number| total += number }
 	end

end
