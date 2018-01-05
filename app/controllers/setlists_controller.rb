class SetlistsController < ApplicationController
  def index
    @setlists = Setlist.all
  end

  def create
    @setlist = @user.setlists.build(setlist_params)

    if @setlist.save
      redirect_to user_setlist_path(@user, @setlist), notice: "Your setlist was created!"
    else
      render :new
    end
  end

  def new
    @setlist = Setlist.new
  end

  def show
  end

  private
  def setlist_params
    params.require(:setlist).permit(:title)
  end
end
