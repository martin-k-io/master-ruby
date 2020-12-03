def helpful(input)
  return input if input > 2

  input += 1

  puts input

  helpful(input)
end

helpful(0)


def helpful2(input)
  if input > 5
    return input
  else
    input += 1
    helpful2(input)
  end
end

helpful2(0)
