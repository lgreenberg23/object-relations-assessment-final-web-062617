# Please copy/paste all three classes into this file to submit your solution!

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





class Rating
  attr_accessor :score, :movie, :viewer

  	@@all = []

  	def initialize(movie, score, viewer)
  		@movie = movie
  		@score = score
  		@viewer = viewer
  		@@all << self
  	end

  	def self.all
  		@@all
  	end

  # not sure these are necessary b/c there is an attr_accessor - these might just be overwriting it
  	def viewer
  		@viewer
  	end

  	def movie
  		@movie
  	end
end



class Viewer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all 
  	@@all 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
  	self.all.find {|viewer| viewer.full_name == full_name}
  end

  def create_rating(movie, score, viewer)
  	Rating.new(movie, score, self)
  end
end


