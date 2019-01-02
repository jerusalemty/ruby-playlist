class SongsController < ApplicationController
    def index
        @songs = Song.select(:artist,:title).distinct
        @song = Song.all
     
    end

    def create
        
        new_song = Song.create(song_params.merge(total: 1))
        if new_song.valid?
            Playlist.create(user_id: current_user.id, song_id: new_song.id, total: 1)
            redirect_to "/songs"
        else
            flash[:errors] = @song.errors.full_messages
            redirect_to "/songs"
        end
    end

    def show
        @song = Song.find(params[:id])
        # @others = @song.users.group("users.id")
        # @songs = Song.where(title:@song.title)
        # @playlist = Playlist.all
    end

    private
    def song_params
        params.require(:song).permit(:title, :artist)
    end
end
