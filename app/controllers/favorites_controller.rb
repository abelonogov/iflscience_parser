class FavoritesController < ApplicationController

  def index
    @all = current_user.favorites
  end

  def create
    favorite = Favorite.new(user_id: params[:user_id], article_id: params[:article_id])
    if favorite.save
      respond_to { |format| format.js }
    else
      redirect_to :back
    end
  end

  def delete
    favorite = Favorite.where(user_id: params[:user_id], article_id: params[:article_id]).first
    if favorite
      favorite.delete 
      respond_to { |format| format.js }
    else
      redirect_to :back
    end
  end
end
