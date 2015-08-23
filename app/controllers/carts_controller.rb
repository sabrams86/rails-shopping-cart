class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts @cart
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end

  def create
    puts params
    @cart = Cart.create(
      user_id: params[:user_id],
      items: [params[:item]]
    )
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end

  def update
  end

  def updateitem
  end
end
