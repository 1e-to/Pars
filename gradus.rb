class Gradus	
	def input()
		puts "Enter gradus"
		@n = gets.chomp.to_i
		puts "Enter now scale"
		@a = gets.chomp
		puts "Enter new scale"
		@b = gets.chomp
		puts "Now #{@n} #{@a}"
	end

	def convert()
		case @a
		when "C"
			case @b
			when "K"
				@n = @n + 273.15 
			when "F"
				@n = @n * 1.8 + 32 
			end
		when "K"
			case @b
			when "C"
				@n = @n - 273.15
			when "F"
				@n = @n * 1.8 - 459.67
			end
		when "F"
			case @b
			when "C"
				@n = (@n - 32) / 1.8
			when "K"
				@n = (@n + 459.67) / 1.8
			end
		end 
	end 

	def output()
		puts "New #{@n} #{@b}"
	end
end

gr = Gradus.new
gr.input
gr.convert
gr.output

