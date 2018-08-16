class Painting

  attr_reader :title, :style
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.styles
    style = all.map {|works| works.style}.uniq!
    return style
  end

end


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
