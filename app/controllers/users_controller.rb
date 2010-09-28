class UsersController < ApplicationController

def dashboard
@user = current_user
@stocks=current_user.stocks
@ideas = current_user.ideas

end


end
