class FavoritesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    render :json => user.favorites
  end

  def create
    user = User.find(params[:user_id])
    favorite = user.favorites.new(params[:favorite])
    if favorite.save
      render :json => favorite.favorited
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end

  def delete
    user = User.find(params[:user_id])
    favorite = user.favorite.new(params[:favorite])
    if favorite.destroy
      render :json => user
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end





end
