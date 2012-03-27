def fib(max)
  fibs = []
  i1, i2 = 1, 1

  while i1 <= max
    yield i1
    fibs << i1
    i1, i2 = i2, i1+i2
  end
  fibs
end

fibs = fib(4000000) { |x| puts x }.select { |x| x % 2 == 0 }

puts "fibs divisible by 2 less than 400000"
puts fibs

puts "sum of fibs divisible by 2 less than 4000000"
puts fibs.inject { |sum, x| sum += x }