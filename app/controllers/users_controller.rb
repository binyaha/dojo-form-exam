class UsersController < ApplicationController

  def show
    @user = current_user
    @articles = @user.articles.where(status: "published")
  end

  def comment
  end

  def collect
  end

  def draft
    @user = current_user
    @articles = @user.articles.where(status: "draft")
  end

  def friend
  end
end
