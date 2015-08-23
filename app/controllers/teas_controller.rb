class TeasController < ApplicationController
  def index
    @teas = Tea.all.to_a
    respond_to do |format|
      format.json { render :json => @teas }
    end
  end

  def show
    @tea = Tea.find(params[:id])
    respond_to do |format|
      format.json { render :json => @tea }
    end
  end
end
