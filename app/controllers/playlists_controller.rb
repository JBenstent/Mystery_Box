class PlaylistsController < ApplicationController

  def add_song
    playlist = Playlist.create(user_id: session[:user_id], song_id: params[:id])
    redirect_to "/songs"
  end



end
