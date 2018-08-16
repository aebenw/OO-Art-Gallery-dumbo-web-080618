class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    places = @@all.map {|item| item.city}
    return places.join(", ")
  end

  def artists
    find_art_works.map {|work| work.artist.name}
  end

  def artists_years

    find_art_works.map {|work| work.artist.years_active}.reduce(:+)
  end

  private

  def find_art_works
    Painting.all.select {|work| work.gallery == self}
  end

end





# GALLERY
#
#

# Get the combined years of experience of all artists at a specific gallery

# ARTIST
#
# Get a list of all the paintings by a specific artists
#
# Get a list of all the galleries that a specific artist has paintings in
#
# Get a list of all cities that contain galleries that a specific artist has paintings in
#
# Find the average years of experience of all artists
#
# PAINTING
#
# Get a list of all paintings
#
# Get a list of all painting styles (a style should not appear more than once in the list)
#
