require 'erb'

class ArtistView
  def initialize(artist)
    @artist = artist
  end

  def get_binding
    binding
  end
end