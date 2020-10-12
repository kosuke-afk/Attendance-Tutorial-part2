class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(paarms[:session][:password])
    #ログイン後にユーザー情報ページへredirectします。
      
    else
      #ここにはエラーメッセージ用のflashを表示する
    render :new
    end
  end
end
