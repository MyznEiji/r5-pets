class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @kanji = "漢字"
  end

end
