# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select{|x| x.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|name, age| age == thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# select on an array returns a new array of elements for which the code
# block returns true. In this case I was testing whether each element in
# the source array included a particular letter.
# select on a hash returns a hash of the key/value pairs for which the
# code block is true. In this case, I was testing whether the age matched 
# the value 3. In order to return an array of the pet names, I called #keys
# on the resulting hash.
#
#
#


# Person 2
def my_array_modification_method(source, thing_to_modify)
	source.map! {|x| x.is_a?(Integer) ? x + thing_to_modify : x}
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  	source.each {|name, age| source[name] += thing_to_modify }
end


p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
# Identify and describe the ruby method you implemented. 
# I was unable to find a method that works on both.  I will continue to look for one 
# and will let you all know if I find something.  In the meantime, here is what I have come up with.
#For my first method, I use map on source, which collects all the value that return true within the block.  
#Within the block, I use a ternary conditional ecpression, which determines whether the element
#is an integer. If true, the block return the element plus the thing to be modified, and if false, it returns soley the element
#The second method uses an each method to go through each element of the array.  For each element, I use the += operator to change the value on
# on each key value pair. 
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort_by { |e| e.to_s }
end

def my_hash_sorting_method(source)
  def my_hash_sorting_method(source)
   source.sort_by {|name, age| age}
end
end

# Identify and describe the ruby method you implemented. 
=begin
sort_by is a more flexible version of 'sort' becuase it allows you to provide expressions to better control the sort.  
sort_by worked for both sorting methods becuase the expression syntax is flexable.  

In my_array_sorting_method, the expression allows us to transform the fixnum values within the string to strings.  
This is important as otherwise the sort_by method would not know how to sort those values.  This ability to transform 
the fix num values into strings is also why we can't just use a 'sort' method.

In my_hash_sorting_method, the expression allows us to define the key (name) and value (age) and then choose which 
perameter we want to sort the hash by.  
=end

# Person 4 Greg White
def my_array_deletion_method(source, thing_to_delete)
  source.delete_if {|element| element.is_a?(String)  && element.include?(thing_to_delete)} 
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if {|key, value| key.include?(thing_to_delete)} 
  print source
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

#p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
#p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
#p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
#p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
#p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
#p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
#p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
#p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# I enjoyed this excersize.  I definitely think I get a lot out of doing an excersize by myself, but I know 
#I also get a lot out of looking at other people's code.  It really looks like my groupd worked really hard to write the dry'est 
#code they possibly could and I learned alot from the style of it.  
# 
# 
# 
# 
