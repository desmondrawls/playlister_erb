require 'erb'

class SongView
  def initialize(song)
    @song = song
  end

  def get_binding
    binding
  end
end