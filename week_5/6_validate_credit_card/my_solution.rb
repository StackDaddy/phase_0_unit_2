# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: A credit card number that is exactly 16 digits.
# Output:The Class will return either true or false when #check_card is called on an object.
# Steps:
#Initialize the class, setting the instance variable card_number equal to parameter received.
#Raise error if not 16 digits.  
#The first step of the alogirth will be done by reversing the order of the array of characters and iterating through 
#every other number, doing so my checking the module of the index. Then double.
#The next method will add the parts.
#the next method check its divisibility by 10.  


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s.split("")
		raise ArgumentError.new("Must be exactly 16 digits!") if @card_number.length != 16 
	end 

	def double
		rcard = @card_number.reverse.map {|i| i.to_i}
		doubled = rcard.each_index.map do |i|
			if i % 2 == 0
				rcard[i] 
			else
				rcard[i] * 2
			end
		end
		return doubled
	end

	def split_sum
		total = 0 
		double.map do |i|
			if i.to_s.length > 1
				double_digit = i.to_s.split("")
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


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(4408041234567893)
puts card1.check_card == true 

card2 = CreditCard.new(4408041234567892)
puts card2.check_card == false 

# card3 = CreditCard.new(1) raises Arg error







# 5. Reflection 
#This excersize was certainly a challenge.  It forced me to look a lot of things up that were necessary for the function.
#Again helped me see the importance of keeping the code dry.  One thing that this excersize enforced was the difference between 
#a function like map and each.  Each just iterates through and array, while map iterates and spits back a new array with the changes.
#Also this excersize forved me to be very careful with understanding what tyoes of object are actually returned.  
