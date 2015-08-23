class TeasController < ApplicationController
  def index
    @teas = Tea.all.to_a
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts @teas
    respond_to do |format|
      format.json { render :json => @teas }
    end
  end

  def show
  end
end
