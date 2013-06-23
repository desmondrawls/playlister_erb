require 'erb'
require_relative "../models/parser"
 
class IndexView
 
  Artist.reset_artists
  Genre.reset_genres
  Song.reset_songs
 
  def initialize
    Parse.new.parse
  end
 
  def get_binding
    binding
  end
 
end
 
 
# playlist = Playlister.new
# template = ERB.new(File.read("index.erb"))
# html_content = template.result(playlist.get_binding)
# File.open("index.html", "w") do |file|
#   file.puts html_content
# end