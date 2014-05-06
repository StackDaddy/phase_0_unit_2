# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: myself






# Our Refactored Solution
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
          while number_of_people > 0  
            if number_of_people / servings["pie"] > 0  #if there are more people than pies
              pie_qty = number_of_people / servings["pie"]  #This gets portions
              number_of_people = number_of_people % servings["pie"]  #this gets amount of people for leftovers 
            elsif number_of_people / servings["cake"] > 0  #If the number of people is not rgeater than pies, we go into cakes
              cake_qty = number_of_people / servings["cake"]
              number_of_people = number_of_people % servings["cake"]
            else
              cookie_qty = number_of_people
              number_of_people = 0
            end
          end
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end








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




#  Reflection 

#This was a little difficult.  I did this alone.  This excersize got me in the habit of first thinking what was the point of this software.
#For example, how will this software actually be relevant.  The original code didn't really make sense, because people were comming in and ordering one thing 
#and then the program was just filtering the order if it wasn't an exact match.  Not the best customer service.  So, 
#I think the important thing to take away from this excersize is to first think about the most polite possible way to inetract with a customer, and then 
#try and have the software emulate that sort of empathetic human behavior.  



