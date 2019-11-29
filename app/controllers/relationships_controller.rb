class RelationshipsController < ApplicationController
    def create
    # 自身で作ったログイン機能であれば、独自実装してあるはずの
    # logged_in?メソッドを使用して、ログイン時のみお気に入りできるようにする。
    if logged_in?
      @user = User.find(params[:relationship][:followed_id])
      current_user.follow!(@user)
    end
  end

  def destroy
  end
end
