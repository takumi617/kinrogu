class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  #allow_browser versions: :modern
  
  #helper_method :current_user
  #private
  #def current_user
    #if session[:login_uid]
      #User.find_by(uid: session[:login_uid])
    #end
  #end

  # Changes to the importmap will invalidate the etag for HTML responses
  #stale_when_importmap_changes
  
  # ビューファイルでも current_user メソッドを使えるようにする
  helper_method :current_user, :logged_in?

  private

  # 現在ログインしているユーザーを取得するメソッド
  def current_user
    if session[:login_uid]
      @current_user ||= User.find_by(uid: session[:login_uid])
    end
  end

  # ログインしていなければログイン画面へリダイレクトするメソッド
  def authenticate_user!
    unless current_user
      redirect_to root_path, alert: "ログインが必要です"
    end
  end
  
  # ログイン状態か判定するメソッド
  def logged_in?
    !!current_user
  end
end
