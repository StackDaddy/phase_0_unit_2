# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
#Initializing the class would be the first thing to do.  Each Pez object will be passed 
#an array of different pez.  
#We will need to make a pez_count method that calls the length method on the local variable we create 
#upon initialization.
#We will need to make a function that takes a pez from the top of the list, I belive the shift method will do the trick.
#I'd like to be able to add a pez back to the bottom of the dispenser to save it for later, I believe the push function will do this.
#This function will take a parameter.  
#Lastly, to view the contents iterate through the array and puts the pez.



# 3. Initial Solution

class PezDispenser
	def initialize(candy)
		@candy = candy 
	end

	def pez_count
		@candy.length 
	end

	def get_pez 
		@candy.shift
	end 

	def add_pez(pez)
		@candy << pez
	end 

	def see_all_pez 
		@candy.each {|item| puts item}
	end

 
end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)

def assert
  raise "Assertion failed!" unless yield
end

assert {super_mario.pez_count == 9}

puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
  raise "Assertion failed!" unless yield
end






# 5. Reflection 
#I though this excersize was pretty easy.  But it was ncie practice to go from normal people talk
#to code.  I feel like I will see a lot of this in my career.  I was a little confused on what to 
#do with the assert statements.  


