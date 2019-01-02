class PlaylistsController < ApplicationController
    def new
    end

    
  
    def add
        song = Song.find(params[:id])
        Song.create(artist: song.artist, title: song.title)
        @playlist = Playlist.create(user_id: current_user.id, song_id: song.id, total: 1)
        redirect_to "/songs"
    end
end
