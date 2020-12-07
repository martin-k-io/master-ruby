class Student
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    puts "The student's name is #{first_name} #{last_name}"
  end
end

student = Student.new("Bob", "Nielson")
student.name
