# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
#It allows us to load a file that is relative to the file containing the require_relative statement.
#
require_relative 'state_data'

class VirusPredictor

#The role of the initialize method is to activate the object when .new is called on the class object VirusPredictor.
#It then assigns the five parameters to five different instance variables.  
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

#It looks that the role of this method is to retrieve the output from the private methods.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

#Take out the arguments.  Redundant

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  #This means that everything below this line cannot be accessed from outside the class. Only other class emthods can acess these private methods.
  #If it were cut above, then the virus effects method would not be accessible outside the method.  

#This method is used to calculate the number of deathers, depending on the population density of the region.  
#And then it prints this information. 
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      death_rate = .4 
    elsif @population_density >= 150
      death_rate = .3
    elsif @population_density >= 100
      death_rate = .2
    elsif @population_density >= 50
      death_rate = .1
    else 
      death_rate = .05 
    end

    number_of_deaths = (@population * death_rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#This method calculates how fast the disease will spread depending on the population density,
#and then it is printed to the sceen.  
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 

#Release 2:  It looks like the value of each state is a Hash.  Within this Hash, the keys are symbols, and then the values of these symbols are the actual data for each state.  
alaska.virus_effects
 
def smoother(data)
data.each do |state, facts|
  VirusPredictor.new(state, facts[:population_density],  facts[:population], facts[:region], facts[:regional_spread]).virus_effects
end
end


 
puts smoother(STATE_DATA)


