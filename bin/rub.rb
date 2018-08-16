require 'pry'

require_relative "../app/models/artist.rb"
require_relative "../app/models/gallery.rb"
require_relative "../app/models/painting.rb"

mondrion = Artist.new("mondrion", 30)
eben = Artist.new("eben", 4)
reinhart = Artist.new("Ad", 50)

zwerner = Gallery.new("David Zwerner", "New York")
pace = Gallery.new("Pace", "New York")
night = Gallery.new("Night Gallery", "LA")


blue = Painting.new("blue", "abstract", reinhart, zwerner)
isle = Painting.new("isle of man", "figure", eben, zwerner)
people = Painting.new("people", "finger", eben, night)
# binding.pry

Artist.average_years_of_artists
# binding.pry
p eben.paintings
