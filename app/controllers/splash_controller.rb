class SplashController < ApplicationController
  before_action :check_signed_in
  before_action :authenticate_user!, except: [:index]

  def index 
    render :layout => false
  end

  def check_signed_in
    redirect_to categories_path if signed_in?
  end
end