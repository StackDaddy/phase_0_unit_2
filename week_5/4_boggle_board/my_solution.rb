# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: Kris Shanks ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# create_word takes two parameters, board and coords.
# coords is a list of arrays of two numbers specifying the coordinates of each letter.
# use an enumerable method that will loop through the coords identifying the 
# referenced letter, and then joining together the referenced letters

# Initial Solution
def create_word(board, *coords)  #define a method, taking two parameters, the second of which is a splat argument, allowing for an indeterminant amount of parameters
    coords.map { |coord| board[coord.first][coord.last]}.join("")  #Map iterates through the array of coordinates, then the functions uses specific method calls to reference the letter at its respective coordinates.
  end

# Refactored Solution

#Was a little unsure what the directions were for this excersize, only because, the code 
#appeared to already be supplied.  We decided to comments on each line of code.


# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a function get_row that takes one parameter row
# access the row by using bracket notation on the array boggle_board

# Initial Solution
def get_row(row)
  boggle_board[row]
end

# Refactored Solution

#this appeared to be the simplest solution.  


# DRIVER TESTS GO BELOW THIS LINE
p get_row(1) ==  ["i", "o", "d", "t"]

# Reflection 
#This seemed pretty straight forward.



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define a function get_col that takes one parameter col
# loop through each "row" and identify the index for the specified column
# Initial Solution

def get_col(col)
  boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    column =[]
    boggle_board.length.times do |i|
        column << boggle_board[i][col]
      end
      return column

end
        

# Refactored Solution

def get_col(col)
        output = []
        for x in 0...@grid.length
            output << @grid[x][col]
        end
        return output
    end


# DRIVER TESTS GO BELOW THIS LINE
print get_col(boggle_board, 1)  ==  ["r", "o", "c", "a"]

# Reflection 

#We were able to get the code to work defining the array boggle_board within the function
#but for some reason we cannot get this program to work if boggle_board is defined outside of the
#function.  



