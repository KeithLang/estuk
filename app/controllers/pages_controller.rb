class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:dasboard]
  def home
  	if current_user
  		redirect_to books_path
  	end
  end

  def dashboard
  	@books = current_user.books
  end
end
