class PagesController < ApplicationController
  def home
    @user = User.new
  end
  def register
  	@user = User.new
  end
  def about
  end
  def search
  end
  def people
    @user = User.new
  end
end
