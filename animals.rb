class Bird
  def talk
    puts "Chirp! Chirp!"
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Dog
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    else
      @name = value
    end
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    else
      @age = value
    end
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
end

class Cat
  def talk
    puts "Meow!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

dog = Dog.new
dog.name = "Daisy"
dog.age = 3
dog.report_age
dog.talk
dog.move("bed")
