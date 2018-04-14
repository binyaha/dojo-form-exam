class UsersController < ApplicationController

  def show
    @user = current_user
    @articles = Article.all
  end
end
