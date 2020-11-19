class Genre < ActiveRecord::Base
    has_many :artists, through: :songs
    has_many :song_genres
    has_many :songs, through: :song_genres

    def slug
        split_array = self.name.split('')
        split_array.join('-')
    end

    def self.find_by_slug(slug)
        my_genre = Genre.find_by(genre.slug == slug)
    end
end