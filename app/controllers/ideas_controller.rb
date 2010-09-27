class IdeasController < ApplicationController

  def new
    @stock1 = Stock.find(params[:ticker_id])
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(params[:idea])
    @idea.user = current_user

    if @idea.save
      redirect_to(@idea, :notice=>"You have created a new idea!")
    else
      render :action=>'new'
    end
  end

end
