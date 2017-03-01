class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
n.times {puts "Woff"}
  end

  def roll_over
  	"*rolls over*"
  end

  def dog_years(n)
   dog_year = n / 7
  end

  def sit
  	"*sits down*"
  end

  def initialize
   p "Initialzing new puppy instance ..."
  end
end

=begin
sparky = Puppy.new

p sparky.fetch("ball")

p sparky.speak(5)
  
p sparky.roll_over

p sparky.dog_years(49)

p sparky.sit
=end

class Student

  def initialize
    puts "Creating student ..."
  end

  def study(subject)
    puts "Studying hard for #{subject}!"
  end

  def report_card(gpa)
    if gpa >= 3
      puts "Good job!"
    else
      puts "Study harder!"
    end
  end
end

studentsArray = []

50.times do
  studentsArray << Student.new
end

studentsArray.each do |student|
  student.study("History")
  student.report_card(3.5)
end