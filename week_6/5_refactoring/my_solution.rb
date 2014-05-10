# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution
class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s.split("")  #Here I added in a global substitution method that uses a regular expression to find blank spaces and delete them.  Therefore, we can now accept input that puts a space after every four number.
		raise ArgumentError.new("Must be exactly 16 digits!") if @card_number.length != 16 
	end 

	def double  #Here I modified the method name double to doubled digits, just to be more clear 
		rcard = @card_number.reverse.map {|i| i.to_i}  #Here I modified the method name double to doubled digits, just to be more clear 
		doubled = rcard.each_index.map do |i|
			if i % 2 == 0
				rcard[i] 
			else
				rcard[i] * 2
			end
		end
		return doubled
	end

	def split_sum  #Here, I am changing the method name to digits_sum
		total = 0 
		double.map do |i|
			if i.to_s.length > 1
				double_digit = i.to_s.split("") #Here, I will be turning the nest to lines of code into one.  No need to create a double_digit variable
				total += (double_digit[0].to_i + double_digit[1].to_i)

			else
				total += i
			end
		end
		return total
	end

	def check_card
		if split_sum % 10 == 0 
			true
		else
			false 
		end
	end

		

end




# Refactored Solution

class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s.gsub(/\s+/, "").split("")  
		raise ArgumentError.new("Must be exactly 16 digits!") if @card_number.length != 16 
	end 


	#The doubled_digits method doubles every other digit starting from the second to last digit.
	def doubled_digits 
		reversed_card = @card_number.reverse.map {|i| i.to_i} 
		doubled = reversed_card.each_index.map do |i|
			if i % 2 == 0
				reversed_card[i] 
			else
				reversed_card[i] * 2
			end
		end
		return doubled
	end

	#The digit sum method sums all of the untouched digits and the doubled digits(doubled digits are split and added)
	def digit_sum
		total = 0 
		doubled_digits.map do |i|
			if i.to_s.length > 1
				total += i.to_s[0].to_i + i.to_s[1].to_i
			else
				total += i
			end
		end
		return total
	end


	#The check_card method determines whether or not the digit_sum is divisible by 10.  
	def check_card
		if digit_sum % 10 == 0 
			true
		else
			false 
		end
	end

		

end



def assert 
	rasie "Assertion failed!" unless yield 
end 



card1 = CreditCard.new(4408041234567893)

assert { card1.check_card == true }



card2 = CreditCard.new(4408041234567892)

assert { card2.check_card == false }



# card3 = CreditCard.new(1) raises Arg error






# DRIVER TESTS GO BELOW THIS LINE



def assert 
	rasie "Assertion failed!" unless yield 
end 



card1 = CreditCard.new(4408041234567893)

assert { card1.check_card == true }



card2 = CreditCard.new(4408041234567892)

assert { card2.check_card == false }



# card3 = CreditCard.new(1) raises Arg error



# Reflection 

#I really enjoyed this excersize.  It forced me to go line by line and really understand what each byte of cdoe was doing.
#After thinking about what each thing was doing, you can then realize what is or is not necessary.  It really helped me reinforce the 
#difference between map and each.  Also, something that I did with the code that I was pretty happy 
#about what allow for more input options by using a regular expression.  
