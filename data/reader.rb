# read every file in the directory
# parse the title, author and verses
# generate hash

# move this stuff to /lib and figure out how to access directory /data

files = []

Dir.glob("*.txt").each do |file|
  files << file  # this is giving me strings which I can't read??
end

# p files
#
# files.each do |file|
#   file.read
# end

# Dir.glob("/data") do |file|
#   p file
# end



file = File.read("poem_01.txt")

verses = file.lines.count("\n")
lines = file.lines.count - 2 - verses

title = file.lines.first.chomp
split_poem = file.split("\n")
author = split_poem[1].strip

poem = {}
poem.store(title, {verses: verses, lines: lines})
poem_hash = {}
poem_hash.store(author, poem)
p poem_hash
