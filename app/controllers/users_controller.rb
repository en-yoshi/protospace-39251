class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 保存が成功した場合の処理
      redirect_to root_path, notice: "ユーザーが正常に作成されました。"
    else
      # 保存が失敗した場合の処理
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
