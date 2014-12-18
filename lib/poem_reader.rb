# read every file in the directory
# parse the title, author and verses
# generate hash

# file =
#   "In Possum Land
#   Henry Lawson
#
#   In Possum Land the nights are fair,
#   the streams are fresh and clear;
#   no dust is in the moonlit air;
#   no traffic jars the ear.
#
#   With Possums gambolling overhead,
#   'neath western stars so grand,
#   Ah! would that we could make our bed
#   tonight in Possum Land"
#
# file2 =
#   "Aboard At A Ship's Helm
#   Walt Whitman
#
#   Aboard, at a ship's helm,
#   A young steersman, steering with care.
#
#   A bell through fog on a sea-coast dolefully ringing,
#   An ocean-bell--O a warning bell, rock'd by the waves.
#
#   O you give good notice indeed, you bell by the sea-reefs ringing,
#   Ringing, ringing, to warn the ship from its wreck-place.
#
#   For, as on the alert, O steersman, you mind the bell's admonition,
#   The bows turn,--the freighted ship, tacking, speeds away under her gray sails,
#   The beautiful and noble ship, with all her precious wealth, speeds away gaily and safe.
#
#   But O the ship, the immortal ship! O ship aboard the ship!
#   O ship of the body--ship of the soul--voyaging, voyaging, voyaging."

# iterate through each file
  # store these variables
  # put these variables into the big hash

# but what about duplicate authors???
# at the end of creating big hash
  # find duplicate keys (authors)
  # store the values of those keys into a variable
  # add those values to one of the keys (authors)
  # remove the duplicates. ?? too long?

# file = File.read("data/poem_01.txt")  # having trouble accessing /data


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
