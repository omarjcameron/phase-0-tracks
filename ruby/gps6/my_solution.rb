# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Relative means a path relative to the file you are trying to pull in 
#
require_relative 'state_data'

class VirusPredictor
# Initialize runs when we create a new instance and takes in state of origin, population density and population as arguments to create a new instance.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Virus effect calls two other methods (the two defined below)
# Removing the parameters on virus effects as instance methods were passed through. It's unnecessry to take them in as parameters since they are already available throughout the class. I made the same changes below for predicted deaths and speed of spread. 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# 'Private' sets the the visiblity for subsequently defined methods/objects, on the current object (in this case class) to private, meaning that the methods listed within private wouldn't be able to be called outside of the scope. You can demonstrate this above by moving private above virus_effects. Upon doing so, you receive an error when you attempt to run the program since virus_effects is presently called in our drive code.  


# Predicted deaths takes in the population density, population and state data and outputs a string depicting the number of deaths in a the given (input) state. It uses the population density to predict the number of deaths. 

# Release 7 - Refactor - You could refactor both of the below methods since each method contains the same if else statement. That said adding these two methods together might have troublesome implications if you then change how these methods are caculated down the line. 

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Speed of spread takes in the population density and state name and outputs a string depicting the rate at which the virus will spread across the state 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each_key do |key|
 state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
state.virus_effects
end
#=======================================================================
=begin *******Release 8: Reflect********
What are the differences between the two different hash syntaxes shown in the state_data file? The differences between the two different hash syntaxes is that in one file the keys are represented by strings and the other the keys are hashes. The outer hash's value is also itself a hash. 

What does require_relative do? How is it different from require?
Require relative is able to pull in data from a file in the same directory or relative file. This appears to be similar to the relative feature in css style sheets. Require is similar to require relative but would require the search path of the file you are trying to load into your program in an effort to find the file.

What are some ways to iterate through a hash? You can use each, map or map to iterate through hashes. You can also use other traditional iteration methods such as while, loop, etc, but those are not as robust for more complex data structures. 

When refactoring virus_effects, what stood out to you about the variables, if anything? The variables are instance variables so they are avaialable throughout the method. There wasn't any need to pass them as parameters. 

What concept did you most solidify in this challenge? I thought the use of the multi-dimensional hash was a good way to sure up my comfortability with hashes. Also the refactoring exercises were great refreshers as well.

=end 
# Reflection Section