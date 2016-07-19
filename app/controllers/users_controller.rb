class UsersController < ApplicationController


    def edit
    end


    def update
      # binding.pry
      User.update(nickname: user_params[:nickname], email: user_params[:email], password: user_params[:password])
      redirect_to  controller: :prototype, action: :index
    end


end
