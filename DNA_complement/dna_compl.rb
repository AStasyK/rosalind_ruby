filename = ARGV.first

File.open(filename, 'r') do |file|
  dna = file.read.chomp.reverse until file.eof?
  hash = { A: 'T',  T: 'A', C: 'G', G: 'C' }
  dna_compl = dna.gsub(/[ATCG]/) { |match| hash[match.to_sym] }
  print dna_compl
end