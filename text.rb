require 'csv'

class Text

	def opens()
		@fh = open "test.csv"
    		@mas = []
    		while (line = @fh.gets) 
       			@mas.insert(@mas.length, line.to_f) 
    		end
    		@fh.close
		return @mas
	end

	def choice()
		puts "Enter what you need to count (x-max, n-min, a-average, d-dispersion)"
		@n = gets.chomp
	end

	def match()
		
		@avr = @mas.reduce(:+) / @mas.length
		@dis = 0
		case @n
		when "x"
			@mas.max
		when "n"
			@mas.min
		when "a"
			@avr
		when "d"			
			@mas.each do |i|
				@dis = @dis + (i - @avr) * 2
			end
			@dis / (@mas.length - 1)
		end
	end

	def out
		puts match
	end

end

txt = Text.new
txt.opens
txt.choice
txt.match
txt.out

