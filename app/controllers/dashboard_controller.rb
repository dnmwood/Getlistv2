class DashboardController < ApplicationController
  before_action :authorize

  def index
    if current_user
      @user_id = current_user.id
    end
  end

  private

  def authorize
    redirect_to 'sessions#new' unless current_user
  end

end
