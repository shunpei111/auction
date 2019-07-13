class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    # アイテムの中のidを見つけるfindメソッド
  end
end

# urlの中のすうじ(id)を取り込むためにparams