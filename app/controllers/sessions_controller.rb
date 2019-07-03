class SessionsController < ApplicationController
  def new
  end

  def create
    input = params[:session]
    user  = User.find_by(email: input[:email].downcase)
      user
       user.authenticate(input[:password])
        login user
        redirect_to '/tasks', notice: 'ログインしました。'
  end

  def destroy
    logout
    redirect_to '/', notice: 'ログアウトしました。'
  end
end
