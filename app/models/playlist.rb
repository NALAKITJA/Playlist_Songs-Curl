class Playlist < ActiveRecord::Base
	belongs_to :songs
	belongs_to :albums
end
