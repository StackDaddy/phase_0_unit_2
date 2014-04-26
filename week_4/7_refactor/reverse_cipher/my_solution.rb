# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)  #the function is being defined and we are declaring a parameter name.
    alphabet = ('a'..'z').to_a  # We are creating an array with the alphabet.  ('a' .. 'z') is a range.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]  #.rotate takes an array and returns an array shifted by four indexes.  Zip converts any arguments to arrays, then merges elements of self with corresponding elements of each argument.  Hash, creates a hash.
    spaces = ["@", "#", "$", "%", "^", "&", "*"]  #Declaring a spaces array
    
    original_sentence = sentence.downcase  #Making all elements in the original sentence lower case and assigning it to a new variable
    encoded_sentence = []  #Declaring an array.
    original_sentence.each_char do |element|  #Looping through each charcter of the original sentence
      if cipher.include?(element)  #We are checking to see if the Hash include this element from the org sentence.
        encoded_sentence << cipher[element]  #If true, take the value from the hash and push it to the encoded sentence
      elsif element == ' ' #If a blank space 
        encoded_sentence << spaces.sample  #.sample takes a random element from the spaces array.  then its pushed to decoded 
      else 
        encoded_sentence << element  # if none of conditions are met, push the element
      end
     end
    
    return encoded_sentence.join  #converts the encoded array to a string.
end


# Questions:
# 1. What is the .to_a method doing?
#It is converting the range of letters to an array.  
# 2. How does the rotate method work? What does it work on?
#IT works by creating a new array by rotating self so that that the element at count is the first element of the new array.  It is working on the array that was created from the .to_a method used on (a..z).
# 3. What is `each_char` doing?
#It is a method called on the orgiginal sentene that will loop through each character.
# 4. What does `sample` do?
#Sample takes a random element from the spaces array.
# 5. Are there any other methods you want to understand better?
#I would like to better understand how Hash() forces something to be a hash.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
#It looks about the same.  
# 7. Is this good code? What makes it good? What makes it bad?
#I think this is good code.  everything has a person, and it is very well organized.  
#All the necsessary infomration is up to, and then the branching is well ordered.  


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

"m#aerx%gssomiw"
"m$aerx@gssomiw"
"m*aerx*gssomiw"
"m*aerx*gssomiw"

#No, it does not.  





# 5. Reflection 

#I liked this excersize.  It gave us an opportunity to see goodcode, and then go out and look up the
#method and understand what they mean.  Prior to this excersize, I did not know what rotate, zip, or sample meant.
#I was also a little foggy on converting one data structure to another.  

