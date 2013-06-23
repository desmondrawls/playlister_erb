require 'erb'

class GenreView
  def initialize(genre)
    @genre = genre
  end

  def get_binding
    binding
  end
end