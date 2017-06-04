filename = ARGV.first

File.open(filename, 'r') do |file|
  dna = file.readline.chomp until file.eof?
  print dna.gsub(/T/, 'U')
end