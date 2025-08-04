class UserController < ApplicationController
  before_action :authenticate_user!
  before_action :usuario_autenticado 

  def show
    @user= User.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def usuario_autenticado
    @user = User.find(params[:id])
    redirect_to user_path(current_user)if @user != current_user
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end

