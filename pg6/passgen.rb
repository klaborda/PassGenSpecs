class Passgen
	def initialize
		@chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a)		
	end

	def get_num_pws
		puts "How many passwords do you need?"
		@num_passwords = gets.chomp
	end
	
	def num_pw_test
		@num_passwords.to_i
	end
	
	def get_length
		puts "How long do you want the password to be?"
		@length = gets.chomp
	end
	
	def get_length_test
		@length.to_i
	end

	def create_pw_a
		@pw_array = Array.new
	end

	def create_one_pw
		@one_pw = Array.new
		@char_size = @chars.size
		@length.to_i.times { @one_pw << @chars[rand(@char_size)]}		
		@one_pw.to_s
	end

	def one_pw_test
		@one_pw.to_i
	end

	def pw_characters(num)
		@chars.at(num)
	end

	def fill_pw_a
		@num_passwords.times { 
			@pw_array << create_one_pw
		}
	end

	def print_pw_a
	  @pw_array.to_a.join("\n")
	end
end
