# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)
# 2)

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) #Defining a function that takes two parameters
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #Declaring a my_list hash
  pie_qty = 0 # Assigning three  other variables 
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false  #setting a default value of false 

  my_list.each_key do |k|  #looping through the keys of my_list
  if k == fav_food  #An if statement, where the condition is comapred to one of the parameters
  has_fave = true  #If true, declaring a has_fave to true 
  fav_food = k  #Assigning fav_food to that key
  end
  end
  if has_fave == false   #If no matec ==> error
  raise ArgumentError.new("You can't make that food")
  else
  fav_food_qty = my_list.values_at(fav_food)[0]  #If match ==> find value from Hash 
  if num_of_people % fav_food_qty == 0  #Module of the first function parameter, number of people by fav food quantity
    num_of_food = num_of_people / fav_food_qty  #If true, get portions 
    return "You need to make #{num_of_food} #{fav_food}(s)." #return an order 
  else num_of_people % fav_food_qty != 0 #redundant but if not 
    while num_of_people > 0  
    if num_of_people / my_list["pie"] > 0  #if there are more people than pies
    pie_qty = num_of_people / my_list["pie"]  #This gets portions
    num_of_people = num_of_people % my_list["pie"]  #this gets amount of people for leftovers 
    elsif num_of_people / my_list["cake"] > 0  #If the number of people is not rgeater than pies, we go into cakes
    cake_qty = num_of_people / my_list["cake"]
    num_of_people = num_of_people % my_list["cake"]
    else
    cookie_qty = num_of_people
    num_of_people = 0
    end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 
def order_taker(number_of_people, order)
    servings = {"pie" => 8, "cake" => 6, "cookie" => 1}
    unless servings.keys.include?(order)
      raise ArgumentError.new("You can't make that food")
    else 
      serving_size = servings[order]
      if serving_size % number_of_people == 0  #Module of the first function parameter, number of people by fav food quantity
          quantity = num_of_people / serving_size  #If true, get portions 
          return "You need to make #{quantity} #{order}(s)." #return an order 
      else  #redundant but if not 
          while num_of_people > 0  
            if num_of_people / my_list["pie"] > 0  #if there are more people than pies
              pie_qty = num_of_people / my_list["pie"]  #This gets portions
              num_of_people = num_of_people % my_list["pie"]  #this gets amount of people for leftovers 
            elsif num_of_people / my_list["cake"] > 0  #If the number of people is not rgeater than pies, we go into cakes
              cake_qty = num_of_people / my_list["cake"]
              num_of_people = num_of_people % my_list["cake"]
            else
              cookie_qty = num_of_people
              num_of_people = 0
            end
          end
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 