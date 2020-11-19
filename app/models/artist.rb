require 'pry'
class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, :through => :songs

    def slug
        split_array = self.name.split('')
        split_array.join('-')
    end

    def self.find_by_slug(slug)
        my_artist = Artist.find_by(artist.slug == slug)
    end
    
end