class PagesController < ApplicationController
  before_action :authenticate_user!, except: :about

  def initial
  end

  def about
  end
end
