# The student collection
students = [
  { name: "Bob", age: 18 },
  { name: "Alice", age: 20 }
]

# The `find_by_name` method is here
def find_by_name(students_collection, name)
  found_student = students_collection.select do |student|
    student[:name] == name
  end

  if found_student.empty?
    puts found_student
  else
    puts "Student not found: #{name}"
  end
end

find_by_name(students, 'Bob')
find_by_name(students, 'Carol')
