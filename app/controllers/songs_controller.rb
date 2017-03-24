class SongsController < ApplicationController

  def get_all_songs
    @all_songs = Song.all.order('updated_at DESC')
  end

  def create_song
    song = Song.new(artist: params[:artist], title: params[:title], user_id: session[:user_id])
    if song.save
      redirect_to "/songs"
    else
      flash[:errors] = song.errors.full_messages
      redirect_to "/songs"
    end
  end

  def preview_song
    @song_info = Song.find_by(id: params[:id])



    @preview_song = Song.where(id: params[:id]) 



    @preview_users = Song.find(params[:id]).users_playlists
    @user_times_added = Playlist.where(user_id: session[:user_id], song_id: params[:id])
    @counter = @user_times_added.count
  end
end
