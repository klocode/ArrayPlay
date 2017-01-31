
#methods
def four_words(text)
  text.split.select {|four| four.length == 4}
end

def how_many_words(text, num)
  text.split.select {|word| word.length == num}
end

#Beginning of the assignment
our_class =["Rob", "David", "Nancy", "Kalea", "Laura", "Dave", "Demetra", "Kendrick", "Phil", "Ben", "Michael", "Miguel"]


five = our_class.select {|name| name.length < 5}
puts five.inspect

sentence = "Ruby is actually kind of fun once you get used to it."

four = sentence.split.select {|word| word.length == 4}
puts four.inspect

movies = []


movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

movies_less_than_100 = movies.select {|movie| movie[:budget] < 100}.collect {|mov| mov[:title]}
puts movies_less_than_100.inspect

leonardo = movies.select {|movie| movie[:stars].include? "Leonardo DiCaprio"}.collect {|mov| mov[:title]}
puts leonardo.inspect

puts four_words(sentence).inspect

puts how_many_words(sentence, 2).inspect

puts four_words(how_many_words(sentence,2))
