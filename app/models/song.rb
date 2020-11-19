class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    def slug
        split_array = self.name.split('')
        split_array.join('-')
    end

    def self.find_by_slug(slug)
        my_song = Song.find_by(song.slug == slug)
    end
end