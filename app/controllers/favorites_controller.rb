class FavoritesController < ApplicationController


  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.article_id = params[:article_id]
    @favorite.save!
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorites = current_user.favorites.where(article_id: params[:id])
    @favorites.destroy_all
  end

end
