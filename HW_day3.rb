# HW Part 1
# We make an array of names of our classmates

classmates = ["Bharvi","Kevin","Astrid","Benjamin", "Kyle","Tahn"]

classmates << "Jared"
classmates << "Jordan"
classmates << "Adam"
classmates << "Kirt"
classmates << "Efrain"
classmates << "Dwight"

# HW Part 2

sentence = "Ruby is way better than JavaScript"

# Create an empty array
words = []
word = ""

# Extract words from sentence using white space as separator and then populate them in empty array
sentence.chars.each do |x|

  if x == " "
    words << word
    word = ""
  else
    word = word + x
  end

end

words << word
puts words.inspect

# Create a counter which keeps counting the words of the array just created
counter = 0

# Loop through each word to see if the length is 4 and if found increases the count by 1
words.each do |word|
  if word.length == 4
    counter = counter + 1
  end
end

# Displays counter in a string using #{}

p "There are #{counter} words who have length of 4 !"

# HW part 3

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

# Create an empty array of Low budget Movies

low_budget_movies = []

# Create a method which checks the condition and returns true if condition satisfied
def low_budget?(movie)
  return movie[:budget] < 100
end

# Loop through each movie which calls the method and if method returns true then populate in  the empty array

movies.each do |movie|
  if low_budget?(movie)
    low_budget_movies << movie
  end
end

# display the array of movies with budget less than 100

p "Low budget movies are :"
puts low_budget_movies.inspect

# Create an empty array which will keep tract of movies starring Leonardo DiCaprio
moviesLDC = []

# define a method which will accept a movie and returns true if the array of stars include LDC
def starsLDC?(movie)
  return movie[:stars].include?("Leonardo DiCaprio")
end

# Loop through each movie which calls the method to check and if returns true, populates in empty array
movies.each do |movie|
  if starsLDC?(movie)
    moviesLDC << movie
  end
end

# Displays movies starring LDC

p "Movies starring Leonardo DiCaprio are :"
puts moviesLDC.inspect
