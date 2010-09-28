class IdeasController < ApplicationController

  def new
    @stock1 = Stock.find(params[:stock_id])
    @user1 = User.find(params[:user_id])
    @idea = Idea.new
    render :action=>'new'
  end

  def create
    @idea = Idea.new(params[:idea])
    stock = Stock.find(params[:stock_id])
    @idea.user = current_user
    @idea.stock = stock
    if @idea.save
      flash[:notice] = "You just made a new idea!"
      redirect_to :controller=>"users", :action=>"dashboard"
    else
      redirect_to :controller=>"users", :action=>"dashboard"
    end
  end

  def show
    #xxxxxxxxxxx
  end

end

