def title(poem)
  poem.lines.first.chomp
end

def author(poem)
  array_of_poem_lines = poem.lines
  array_of_poem_lines[1].strip
end

def count_verses(poem)
  poem.lines.count("\n")
end

def count_lines(poem)
  title_plus_author_lines = 2
  extra_lines = count_verses(poem) + title_plus_author_lines
  poem.lines.count - extra_lines
end

def poem_to_hash(poem)
  poem_hash = {}
  poem_hash.store(title(poem), {verses: count_verses(poem), lines: count_lines(poem)})
  poem_hash
end

def all_poems_to_hash(file_path)
  big_poem_hash = {}
  Dir.glob(file_path).each do |file|
    raw_poem = File.read(file)
    if big_poem_hash.has_key?(author(raw_poem))
      big_poem_hash[author(raw_poem)].store(title(raw_poem), {verses: count_verses(raw_poem), lines: count_lines(raw_poem)})
    else
      big_poem_hash.store(author(raw_poem), poem_to_hash(raw_poem))
    end
  end

  big_poem_hash
end

p all_poems_to_hash("data/*.txt")
