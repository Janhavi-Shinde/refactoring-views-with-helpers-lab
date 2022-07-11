class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    @my_artist = Artist.find_or_create_by(name: name)
    self.artist = @my_artist

  end
end
