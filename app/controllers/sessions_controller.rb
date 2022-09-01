class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:session][:username])
      user ? log_in(user) : render('new')
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end