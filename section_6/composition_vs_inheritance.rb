module Flight
  def can_fly?
    true
  end

  def has_wings?
    true
  end
end

class Avian

end

class Bird < Avian
  include Flight

  def lays_eggs?
    true
  end
end

class Mammal
  def lays_eggs?
    false
  end

  def warm_blooded?
    true
  end

  def can_fly?
    false
  end
end

class Bat < Mammal
  # Module inclusion overrides methods from parent class
  include Flight

end

bat = Bat.new
bird = Bird.new

puts bird.lays_eggs? && bird.can_fly? && bird.has_wings?
puts bat.warm_blooded? && bat.can_fly? && bat.has_wings?
