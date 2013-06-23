require 'erb'
require 'debugger'
require_relative "views/index_view"
require_relative "views/artist_view"
require_relative "views/song_view"
require_relative "views/genre_view"

playlist = IndexView.new
template = ERB.new(File.read("views/index_template.erb"))
html_content = template.result(playlist.get_binding)
File.open("index.html", "w") do |file|
  file.puts html_content
end

Artist.all.each do |artist|
  artistview = ArtistView.new(artist)
  template = ERB.new(File.read("views/artist_template.erb"))
  html_content = template.result(artistview.get_binding)
  f = File.new("artists/#{artist.name.downcase}.html", "w")
  File.open(f, "w") do |file|
    file.puts html_content
  end
end

Song.all.each do |song|
  songview = SongView.new(song)
  template = ERB.new(File.read("views/song_template.erb"))
  html_content = template.result(songview.get_binding)
  f = File.new("songs/#{song.name.downcase}.html", "w")
  File.open(f, "w") do |file|
    file.puts html_content
  end
end

Genre.all.each do |genre|
  genreview = GenreView.new(genre)
  template = ERB.new(File.read("views/genre_template.erb"))
  html_content = template.result(genreview.get_binding)
  f = File.new("genres/#{genre.name.downcase}.html", "w")
  File.open(f, "w") do |file|
    file.puts html_content
  end
end