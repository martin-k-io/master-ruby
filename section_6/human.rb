require_relative 'helpful'

class Human
  include Helpful

  def show_full_marks
    puts Helpful::FULL_MARKS
  end

  def show_description
    Helpful.description
  end

  def reminder
    tip # allowed by include Helpful
  end
end

human1 = Human.new

human1.show_full_marks
human1.reminder
human1.show_description
