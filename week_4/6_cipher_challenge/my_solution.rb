# U2.W4: Cipher Challenge


# I worked on this challenge with: .Kirstin Jarchow



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

# array.each do |letter|
#   ((input[letter]).ord - 4).chr


# for i in input
#   if input[i] < 97 || input[i] > 122
#       next
#   elsif input[i] < 101
#       input[i] = (input[i] + 22)
#   else
#   input[i] = (input[i] - 4)
# end

input = "hello"

def north_korean_cipher(coded_message)
  input = coded_message.split("")
  input.each_char do |i| # for each character in the string, i is the current iteration.
    if input[i].ord.between(97, 100)# if the current character is not a lowercase letter
      input[i] = (input[i].ord + 22).chr
    elsif input[i].ord.between(101, 122)  # if the letter is a, b, c, or d
      input[i] = (input[i].ord - 4).chr
    elsif input[i] == "@" || input[i] == "#" || input[i] == "$" || input[i] == "%"|| input[i] == "^" || input[i] == "&"|| input[i] =="*"
       input[i] = " "                                                                         # adding 22 will result in its cooresponding letter (see an ascii table)
    else
      next 
    end
  end
  input = input.join("")
  if input.match(/\d+/) #What is this matching? Look at Rubular for help. 
    input.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return input
  end

puts "#{input}"




def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded = []
  input.each do |i| 
    if (97..100).include?(i.ord)
      decoded << (i.ord + 22).chr
    elsif (101..122).include?(i.ord)
        decoded << (i.ord - 4).chr
    elsif i == "@" || i == "#" || i == "$" || i == "%"|| i == "^" || i== "&"|| i =="*"
        decoded << " "                     
    else
        decoded << i  
    end
  end
  
  intel = decoded.join("")

  if intel.match(/\d+/) #What is this matching? Look at Rubular for help. 
    intel.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end
  
  return intel  
  end





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
#The majority of my reflection for this section is within my cultural assignment for this week, but I will quickly recap.  I felt it was difficult to pair on this 
#excersize.  Only because there were a lot of diferent logical frameworks the code could take, and there were a lot of 
#things that needed to be taken care of, so it was very hard to be on the same page, or have the same code in mind.
#
 
