
#methods
def four_words(text)
  how_many_words(text, 4)
end

def how_many_words(text, num)
  text.split.select {|word| word.length == num}
end

def starring?(mov, actor)
  mov.select {|movie| movie[:stars].include? actor}.collect {|title| title[:title]}
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

puts "Words of length 4 characters are #{four_words(sentence).inspect}"

puts "The words of asked length are #{how_many_words(sentence, 2).inspect}"

money = 0
movies.each {|mon| money += mon[:budget]}

puts "The total budget for the movies is #{money}!"

sortedlist = []

sortedlist = movies.select { |movie| movie[:stars]}.collect {|mov| mov[:stars]}.flatten.uniq

puts sortedlist.inspect


#two steps: take an array to work off of, parse said array for actors and put those actors into a hash in my actor array
#assign the results of starring? to a :movie hash in actors array
