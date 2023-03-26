class PagesController < ApplicationController
  before_action :authenticate_user!, except: :about

  def initial
    @user = User.find(current_user.id)
  end

  def about
  end
end
