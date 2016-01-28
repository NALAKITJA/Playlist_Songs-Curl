class Song < ActiveRecord::Base
	has_many :playlists
	has_many :albums, through: :playlists
end
