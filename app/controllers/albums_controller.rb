class AlbumsController < ApplicationController
	
	skip_before_action :verify_authenticity_token
	def  index # SELECT # GET
		render json: Album.all
	end
	def create # POST
		album = Album.new(album_params)
		if album.save
			render json: album, status: :created, location: album
		end
	end
	def update # PUT
		album = Album.find(params[:id])
		if album.update_attributes(song_params)
			render json: album, status: 200
		end
	end
	def destroy # DELETE
		album = Album.find(params[:id])
		if album.destroy
			head :no_content
		end
		
	end
	private 
	def album_params
		params.require(:album).permit(:name_album)
	end
end
