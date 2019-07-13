class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    # アイテムの中のidを見つけるfindメソッド
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new 
    # 商品をメモリ上につくる
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
    #redirect_toはメソッド、ここに飛ぶ.
  end

  def edit 
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path 
  end
  # update、destory、editはまず値を取得しないといけない
  
  
  
  
  private

  def item_params 
    params.require(:item).permit(:name, :price, :seller,
    :description, :email, :image_url)
  end
end

