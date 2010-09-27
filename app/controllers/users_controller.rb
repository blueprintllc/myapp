class UsersController < ApplicationController

def dashboard
@user = current_user
@stocks = Stock.find_all_by_user_id(@user)
end


end
