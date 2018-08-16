class Artist

  attr_reader :name, :years_active
  attr_accessor :paintings
  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_years_of_artists
    years = @@all.map {|item| return item.years_active}
    return years/@@all.length
  end

  def paintings
    find_works.map {|works| works.title}
  end


  def galleries
    find_works.map {|works| works.gallery.city}
  end

  private

  def find_works
    Painting.all.select {|work| work.artist == self}
  end

end


# ARTIST

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
# GALLERY
#
# Get a list of all galleries
#
# Get a list of all cities that have a gallery. A city should not appear more than once in the list.
#
# Get a list of artists that have paintings at a specific gallery
#
# Get a list of the names of artists that have paintings at a specific gallery
#
# Get the combined years of experience of all artists at a specific gallery
