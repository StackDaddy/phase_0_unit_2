# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: Austen Bourdier].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
	def initialize(grid)
		@grid = grid 
	end
	def create_word(*coords) 
    	coords.map { |coord| @grid[coord.first][coord.last]}.join("") 
  	end

  	def get_row(row)
        @grid[row]
    end

    def get_col(col)
        output = []
        for x in 0...@grid.length
            output << @grid[x][col]
        end
        return output
    end

    def get_letter(coord)
       @grid[coord.first][coord.last]
   	end
 
  #your code here
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code"
puts boggle_board.create_word([0,1], [0,2], [1,2])  == "rad"
 
puts boggle_board.get_row(2) == ["e", "c", "l", "r"]
puts boggle_board.get_row(3) == ["t", "a", "k", "e"]

puts boggle_board.get_col(3) == ["e", "t", "r", "e"]
puts boggle_board.get_col(1)  ==  ["r", "o", "c", "a"]

puts boggle_board.get_letter([3,2]) == "k"


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:


# 5. Reflection 
#This excersize seemed pretty simple.  It was a good review of nested array. I paired on this 
#challenge and it was good practive listening to other people's ideas.   