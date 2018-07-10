class UsersController < ApplicationController
  def show
    @user = Model.find(params[:id])
  end
end