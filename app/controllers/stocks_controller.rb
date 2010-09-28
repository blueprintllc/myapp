class StocksController < ApplicationController

def create
  @stock=Stock.new(params[:stock])
  current_user.stocks << @stock
  if @stock.save
    flash[:notice] = "You are now following #{@stock.ticker}!"
    redirect_to :controller=>"users", :action=>"dashboard"
  end
end

def destroy
  @stock = Stock.find(params[:id])
  @stock.destroy
  flash[:notice] = "You are no longer following #{@stock.ticker}!"
  redirect_to :controller=>"users", :action=>"dashboard"
end

end
