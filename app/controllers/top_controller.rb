class TopController < ApplicationController
  def main
    render "login_form"
  end
  
  def login
    user = User.find_by(uid: params[:uid])
    if user and user.authenticate(params[:pass])
      session[:login_uid] = params[:uid]
      redirect_to root_path
    end
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
  
end