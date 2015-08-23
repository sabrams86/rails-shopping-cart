class CartsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @cart = Cart.find(params[:id])
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end

  def create
    @cart = Cart.create(
      user_id: '',
      items: [{item_id: params[:item][:item_id], quantity: params[:item][:quantity]}]
    )
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end

  def update
    @cart = Cart.find(params[:id])
    @cart.update_attributes(
      user_id: params[:cart][:user_id],
      items: params[:cart][:items]
    )
    @cart.inspect
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end

  def updateitem
    @cart = Cart.find(params[:id])
    @cart.update_attribute(
      :items, params[:updatedCart]
    )
    @cart.inspect
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end
end
