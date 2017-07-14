class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
  	@@all 
  end

  def self.find_by_title(title)
  	self.all.find {|movie| movie.title == title}
  end

  def ratings
  	Rating.all.select {|rating| rating.movie == self}
  end


  def viewers
  	self.ratings.collect {|rating| rating.viewer}
  end

  def average_movie
  	#returns average of scores for that movie
  	sum_score = 0
  	ave_score = 0
  	all_scores = self.ratings.collect {|rating| rating.score}
  	if all_scores.length >=1
  		all_scores.each {|score| sum_score += score}
  		ave_score = sum_score.to_f / all_scores.length.to_f
  	else
  		puts "there are no ratings for this movie"
  		ave_score = 0
  	end
  	ave_score
  end

end

