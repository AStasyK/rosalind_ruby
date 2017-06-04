filename = ARGV.first

File.open(filename, 'r') do |file|
  dna = file.read.chomp until file.eof?
  str = 'ACGT'
  str.each_char { |base| print "#{dna.count(base)} " }
end