# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:  Throughout the course of the game, the code will need both the answer and the various guesses as input

# Output: The class will have two methods, guess and solved.   If the guess is not the answer, solved will return false,
#If it is, solved will return true.  The methos guess, will return :low, :high, or :correct, depending on how the guess compares to the answer.
# Steps:
#Inititalize the class with the variable answer.  

# 3. Initial Solution

class GuessingGame
 	def initialize(answer)
		@answer = answer 
		@solved = false 
	end

	def solved?
		@solved
	end


	def guess(guess)
		if @answer > guess
			@solved = false
			return :low
		elsif @answer < guess
			@solved = false 
			return :high  
		elsif @answer == guess
			@solved = true
			return :correct 
			 
		end 
	end

	 
  
  # Make sure you define the other required methods, too
end




# 4. Refactored Solution


#I started writing the code with conditional statements in the solved method.
#But then when I started to run some of the tests, I noticed that the solved method was not lined to the guess
#so I went back and initialized the class with a solved variable set to false, and declared it for 
#every condition in the guess method.  I also first made the mistake, of declaring this avriable after 
#the return statement.  



# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
#constructing this class definitely expanded my mind in thinking about what variables 
#need to be initialized.  Initializing the solved variable as false made this object much simpler.
#It also forced me to consider details.  For instance, forgeting to add the instance variable assignments before the 
#return statement was a big reminder to how methods work.  
