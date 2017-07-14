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

