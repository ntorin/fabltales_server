class ShopItemsController < ApplicationController
  before_action :set_shop_item, only: [:show, :update, :destroy]

  # GET /shop_items
  def index
    @shop_items = ShopItem.all

    render json: @shop_items
  end

  # GET /shop_items/1
  def show
    render json: @shop_item
  end

  # POST /shop_items
  def create
    @shop_item = ShopItem.new(shop_item_params)

    if @shop_item.save
      render json: @shop_item, status: :created, location: @shop_item
    else
      render json: @shop_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shop_items/1
  def update
    if @shop_item.update(shop_item_params)
      render json: @shop_item
    else
      render json: @shop_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shop_items/1
  def destroy
    @shop_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_item
      @shop_item = ShopItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shop_item_params
      params.require(:shop_item).permit(:name, :description, :price, :image)
    end
end
