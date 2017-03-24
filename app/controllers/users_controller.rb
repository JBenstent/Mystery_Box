class UsersController < ApplicationController

  def index
  end

  def create_user
    user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], password_confirmation: params[:confirm_password])
    if user.save
      session[:user] = user
      session[:user_id] = user.id
      redirect_to "/songs"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to "/"
    end
  end

  def login
    user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if user
      session[:user] = user
      session[:user_id] = user.id
      redirect_to "/songs"
    else
      flash[:errors] = ["Invalid login"]
      redirect_to "/"
    end
  end

  def preview_profile
    @user = User.where(id: params[:id])
    @playlist_adds = Playlist.where(user_id: @user)
    @all_songs_1 = Song.all

  end

  def logout
    session.clear
    redirect_to "/"
  end
end
