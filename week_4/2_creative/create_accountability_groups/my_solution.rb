# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input:

#A list of names of people in our cohort.  This will be an array of approximately 65 people.

# Output:

#The function will separate this people into groups of 4 three separate times.  

# Steps:

# Create a loop that repeats three times.  
# The code that sould be executed should splice the array into groups of 4,
# and these groups should be printed out.  Afterwards, but before the next repetition, the main, 
# array should be randomized.  
# 


# 3. Initial Solution

array = ["Adam Hardy", "Adrian Soghoian", "Ajay Bir Singh", "Alec Ashford", "Alex Mazur", "Alexis Ernst",

"Amelia Downs", "Amol Borcar", "Andrew C. Koines, Jr.", "Andrew Principe", "Armen Vartan",

"Austin Bourdier", "Ben Brostoff", "Brendan Susens-Jackson", "Brennon Williams",

"Bridgette L. Salcido", "Britney Van Valkenburg", "Celeen Rusk", "Chad Everett Howard", "Christian Moon", "Colin Trent",

"Dakota Cousineau", "Daniel Kim", "Danny Glover", "Gabriel Garrett",

"Gregory Piccolo", "Gregory White", "Hing Huynh", "Ian Shuff", "Jake Wayne",

"Jeff Kynaston", "Jennifer Oseitutu", "Jeuel Wilkerson", "John Thomas Mulvahill",

"Joseph Rosztoczy", "Josh Jeong", "Katie Reiner", "Kendall Carey",

"Kenneth Mendonca", "Kirstin Jarchow", "Kris Shanks", "Lienha Carleton",

"Martin A. Lear", "Matias Andres Meneses", "Matthew Hein", "Matthew Kuzio",

"Matthieu Gavaudan", "Michael Drew Teter", "Michael Ginalick", "Neel Shah", "Nick Giovacchini",

"Osama Zayyad", "Phillip Crawford", "Phillip Smith", "RJ Arena", "Rj Bernaldo",

"Ronald Ishak", "Ryan Stack", "Scott Jason", "Sherwood Callaway", "Siddharth Patel",

"Simon Gondeck", "Spencer Olson", "Stella Kim", "Stuart Pearlman", "Timoor Kurdi",

"Timothy Howard", "Valentine Sverdlov", "Vivek M George", "Yariv Kirschner",

"Zach Pflederer", "antonio perez"]

def account_groups(array) 
	for i in 1..3
		puts "Unit #{i} Accountability Groups \n"
		print array.each_slice(4).to_a 
		array.shuffle!
		puts "\n"
	end
end


account_groups(array) 





# 4. Refactored Solution

#I just left my final solution in the initial solution, but when I first wrote the function
#I just had array.shuffle, thinking this would do the trick of randomizing the array.  It turns out 
#that I needed to use the ! command so that it constructed a new array and saved it.  Also, it was very jumbled,
#,so I put a newline command after each accountability group and at the end of the loop.  






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


