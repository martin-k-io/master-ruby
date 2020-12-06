class Animal
  def breathe
    puts "My class is #{self.class} I breathe in and out"
  end

  def move
    "something happened"
  end

  def eat

  end
end

class Bear < Animal
  def breathe
    puts "I'm something else"
    super # calls the parent method with the same name
  end

  def to_s
    puts "This is a bear"
  end
end

class Dog < Animal
  def likes_honey?
    false
  end

  def wag_tail

  end
end


bear = Bear.new
dog = Dog.new

bear.breathe
bear.to_s
