# U2.W5: Virus Predictor

# I worked on this challenge [by myself].

# EXPLANATION OF require_relative
# this says that this ruby document needs to load the 'state_data' document
# relative just means that it is in the same folder as this document.
require_relative 'state_data' 
                              

class VirusPredictor

  # initialize the class to values to the instance values
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # returns the number of predicted deaths and speed of the spread by calling the other methods
  def virus_effects  #HINT: What is the SCOPE of instance variables? their values are local to specific instances
                     #of an object. 
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
           # if it were put above virus_effects, a user wouldn't be able to call that method.

  # takes in a population density, population, and state as parameters and returns the number of deaths
  # predicted by using some equation.
  def predicted_deaths(population_density, population, state)
    case @population_density
    when 200..Float::INFINITY
      number_of_deaths = (@population * 0.4).floor
    when 150..199.9999
      number_of_deaths = (@population * 0.3).floor
    when 100..149.9999
      number_of_deaths = (@population * 0.2).floor
    when 50..99.9999
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # returns the predicted speed of spread by taking in the population density and state and some formula
  def speed_of_spread(population_density, state) #in months

    case @population_density
    when 200..Float::INFINITY
      speed = 0.5
    when 150..199.9999
      speed = 1
    when 100..149.9999
      speed = 1.5
    when 50..99.9999
      speed = 2
    else 
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

def report_all(state_data)
  state_data.each do |state, info|
    each = VirusPredictor.new(state, info[:population_density], info[:population], info[:region], info[:regional_spread])
    each.virus_effects
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
alaska.virus_effects