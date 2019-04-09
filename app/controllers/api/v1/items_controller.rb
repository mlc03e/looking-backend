class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end


  def show
    @item = Item.find(params[:id])
    render json: @item, status: :ok
  end

  private

  def item_params
    params.require(:item).permit(:description, :price, :category_id, :name, :image, :size)
  end


end
