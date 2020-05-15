
class StocksController < ApplicationController
  # GET /stocks
  # GET /stocks.xml
  def index
    @stocks = Stock.search(params[:search])# Stock.find by parameters

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stocks }
    end
  end

  # GET /stocks/1
  # GET /stocks/1.xml
  def show