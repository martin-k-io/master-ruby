def foo(arg)
  5 + arg
end

def bar
  2
end

def baz
  10 + foo(bar)
end

puts baz

puts "sky is blue".reverse
