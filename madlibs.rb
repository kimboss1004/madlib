nouns = File.open('nouns.txt', 'r') {|x| x.read}.split(' ') 
verbs = File.open('verbs.txt', 'r') {|x| x.read}.split(' ') 
adj = File.open('adj.txt', 'r') {|x| x.read}.split(' ') 


content = File.open(ARGV[0], "r") do |i| 
  i.read 
end

dictionary = {
  noun: nouns,
  verb: verbs,
  adj: adj
}


puts "No input file" && exit if ARGV.empty?

puts "Input invalid" && exit if !(File.exist?(ARGV[0]))




content.gsub!("NOUN").each do|noun|
  noun = dictionary[:noun].sample
end

content.gsub!("VERB").each do|verb|
  verb = dictionary[:verb].sample
end

content.gsub!("ADJ").each do|adj|
  adj = dictionary[:adj].sample
end

p content








