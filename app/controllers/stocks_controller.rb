class StocksController < ApplicationController

  def show
    @stock = Stock.find(params[:id])
    @ideas = Idea.find_all_by_ticker_id(@stock)
    @user=current_user
  end


end
