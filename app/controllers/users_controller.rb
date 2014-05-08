class UsersController < ApplicationController

  def show 
    @user = User.find(params[:id])
    @chapter = Chapter.new
  end

end

