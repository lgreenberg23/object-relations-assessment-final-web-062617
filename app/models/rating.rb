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

# not sure these are necessary b/c there is an attr_accessor
# these might just be overwriting
  	def viewer
  		@viewer
  	end

  	def movie
  		@movie
  	end
end