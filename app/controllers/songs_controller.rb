class SongsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		render json: Song.all		
	end
	def create
		song = Song.new(song_params)

		if song.save
			render json: song
			
		end
	end
	private
		def song_params
			params.require(:song).permit(:name_song, :name_artist)
		end
end
