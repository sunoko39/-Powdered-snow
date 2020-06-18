class ItemController < ApplicationController

  def index
    @items = Item.all
    @item = Item.new
    @total = 0
    @items.each do |item|
      @total += item.price
    end
  end

  def create
    @item = Item.new(item: params[:item], price: params[:price], pergrams: params[:pergrams])
    if @item.save
      flash[:notice] = "追加しました"
      redirect_to("/item/index")
    else
      @items = Item.all
      render("item/index")
    end 
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.price = params[:price]
    @item.pergrams = params[:pergrams]
    @item.save
    flash[:notice] = "更新しました"
    redirect_to("/item/index")
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    flash[:notice] = "1件削除しました"
    redirect_to("/item/index")
  end

  def destroy_all
    @items = Item.all
    @items.destroy_all
    flash[:notice] = "カートを全て削除しました"
    redirect_to("/item/index")
  end

  def buy
    @items = Item.all
    @items.each do |item|
      @boughtlists = Boughtlist.new(item: item.item, price: item.price, pergram: item.pergrams)
      @boughtlists.save
    end
    @items.destroy_all
    flash[:notice] = "購入履歴に保存しました"
    redirect_to("/item/index")
  end

  def boughtlists
    @boughtlists = Boughtlist.all
  end

  def listdelete
    @bougthlists = Boughtlist.all
    @bougthlists.delete_all
    flash[:notice] = "履歴を全て削除しました"
    redirect_to("/item/index")
  end
end
