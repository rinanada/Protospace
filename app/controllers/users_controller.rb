class UsersController < ApplicationController


    def edit

    end


    def update
      # binding.pry
      current_user.update(user_params)
      # binding.pry
      redirect_to  root_path
    end

    private
    def user_params
      params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
    end
end
