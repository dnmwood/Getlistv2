class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if current_user
      @song.user_id = current_user.id
    end

    if @song.save
      redirect_to songs_url
    else
      render :new
    end
  end

  def show
    @song = Song.find_by(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def song_params
    params.require(:song).permit(:title, :duration)
  end
end
