class SetlistsController < ApplicationController

  def index
    @setlists = Setlist.all
  end

  def new
    @setlist = Setlist.new
  end

  def create
    @setlist = Setlist.new(setlist_params)

    if current_user
      @setlist.user_id = current_user.id
    end

    if @setlist.save
      redirect_to setlist_path(@setlist)
    else
      render :new
    end
  end

  def update
    @setlist = Setlist.find(params[:id])
    if @setlist.update_attributes(setlist_params)
      redirect_to '/dashboard'
    else
      render :edit
    end
  end

  def show
    @setlist = Setlist.find(params[:id])
  end

  private
  def setlist_params
    params.require(:setlist).permit(:title)
  end
end
