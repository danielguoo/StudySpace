class PagesController < ApplicationController
  def home
  end
  def register
  	@user = User.new
  end
  def about
  end
  def search
  end
end
