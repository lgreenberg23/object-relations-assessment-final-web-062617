require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Pry.start



=begin

esti = Viewer.new('esti')
rachel = Viewer.new('rachel')
matti = Viewer.new('matti')
sam_k = Viewer.new('sam')

cars = Movie.new('cars')
legally_blonde = Movie.new('legally blonde')
dont_think = Movie.new('dont think twice')	

rate1 = Rating.new(dont_think, 3, sam)
rate2 = Rating.new(dont_think, 5, esti)
rate3 = Rating.new(cars, 5, matti)
rate4 = Rating.new(cars, 4, rachel)

=end