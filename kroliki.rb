class Kroliki
	def input()
		puts "Enter month"
		@n = gets.chomp.to_i
	end

	def calc()
		@sum = (((((1 + Math.sqrt(5))/2) ** @n) - (((1 - Math.sqrt(5))/2) ** @n)) / Math.sqrt(5)).to_i
	end

	def output()
		puts "Number of rabbit's couples is #{@sum}"
	end
end

kr = Kroliki.new
kr.input
kr.calc
kr.output
