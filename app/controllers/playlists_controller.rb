class PlaylistsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
 		# student = Student.find(params[:student_id])
 		# course = Course.find(params[:course_id])
 		playlist = Playlist.new(song_id: params[:song_id])
 							# course_id: params[:course_id])
 		if playlist.save
 			render json: playlist
 		end

	# def index # SELECT #GET
	# 	#@playlists = Playlist.all
	# 	render json: Playlist.all
	# end
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
		
	# #def show
	# #	@playlists = Playlist.find(params[:name])
	# #	respond_to do |index|
	# #		index.html {render :text => @playlists.html_content}
	# #		0
	# #	end
		
	end
end
