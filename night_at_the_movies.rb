movies = {
    office_space: 10
}

puts "What do you want to do?"
choice = gets.chomp

case choice
when "add"
    puts "What movie title?"
    title = gets.chomp.to_sym
    
    puts "What is this movies rating?"
    rating = gets.chomp.to_i
    
    if movies[title] == nil
       movies[title] = rating 
       puts "Movie added!"
    else
        puts "This movie has already been added"
    end
when "update"
    puts "What movie title?"
    title = gets.chomp.intern
    
    if movies[title] == nil
        puts "This movie is not currently in the Hash"
    else
        puts "What rating should this movie be updated to?"
        rating = gets.chomp.to_i
        
        movies[title] = rating
        puts "Done"
    end
when "display"
    movies.each do |film, rating|
        puts "#{film}: #{rating}"
    end
when "delete"
    puts "Which film do you want to delete?"
    title = gets.chomp.intern
    
    if movies[title] == nil
        puts "That movie does not exist!"
    else
        movies.delete(title)
    end
else
    puts "Error!"
end
