module Helpful
  FULL_MARKS = 100

  def Helpful.tip
    puts "Perhaps you forgot to add a question mark?"
  end
end

class Exam
  def validate(sentence)
    Helpful.tip unless sentence.include?("?")
  end

  def score(score_amount)
    "Congratulations, you got #{score_amount}/#{Helpful::FULL_MARKS}"
    Helpful::FULL_MARKS = 80 #Dynamic constant assignment not allowed
  end
end

exam = Exam.new
puts examp.score(80)
exam.validate("can you tell me the meaning of life")

class Person
  def question(sentence)
    if sentence.include?("?")
      "What about #{sentence}"
    else
      Helpful.tip
    end
  end
end

person1 = Person.new

puts person1.question("the number of birds in the sky")
