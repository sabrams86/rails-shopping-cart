class CartsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @cart = Cart.find(params[:id])
    respond_to do |format|
      format.json { render :json => @cart }
    end
  end

  def create
    puts params
    @cart = Cart.create(
      user_id: '',
      items: [{item_id: params[:item][:item_id][:$oid], quantity: params[:item][:quantity]}]
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
