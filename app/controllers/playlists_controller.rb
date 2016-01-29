class PlaylistsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index # SELECT #GET
		# playlists = Playlist.all
		# render :json => @song
		# render :json => @album
	# respond_to do |format|
 #  	format.json  { render :json => {:song => @song, 
 #                                  :album => @album }}
 	render json: Playlist.all
 	# , :include => [:album, :song] 

	end

	def create
 		# student = Student.find(params[:student_id])
 		# course = Course.find(params[:course_id])

 		playlist = Playlist.new(album_id: params[:album_id],
 								song_id: params[:song_id])
 		if playlist.save
 			render json: playlist, location: playlist
 		end

	end
	
	# def create # POST
	# 	playlist = Playlist.new(playlist_params)
	# 	if playlist.save
	# 		render json: playlist, status: :created, location: playlist
	# 	end

	# end
	# def update # PUT
	# 	playlist = Playlist.find(params[:id])
	# 	if playlist.update_atrributes(playlist_params)
	# 		render json: playlist, status: 200
			
	# 	end
		
	# end
	# def destroy # DELETE
	# 	playlist = Playlist.find(params[:id])
	# 	if playlist.destroy
	# 		head :no_content
	# 	end
	# 	private 
	# def playlist_params
	# 	params.require(:playlist).permit(:name, :artist)
	# end
		
	# private 
	# def 
	# 	params.require(:album).permit(:name_album)
	# end
end
# end

