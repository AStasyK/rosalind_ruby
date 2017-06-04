def fibonacci(n, k)
  fib = [0, 1]
  2.upto(n) { | i |  fib[i] = fib[i - 1] + fib[i - 2] * k }
  fib[n]
end

filename = ARGV.first

File.open(filename, 'r') do |file|
  rabbits = file.readline.chomp until file.eof?
  rabbits  = rabbits.scan(/\d{1,2}/)
  puts rabbits
  puts fibonacci(rabbits[0].to_i, rabbits[1].to_i)
end