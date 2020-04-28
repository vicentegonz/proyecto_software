class UserscontrollerController < ApplicationController
  def new_user
    name = params[:name]
    username = params[:username]
    email = params[:email]
    comuna = params[:comuna]

    user = User.new(name: name, username: username, email: email,comuna: comuna)

    user.save

    redirect_to action: 'list'
  end

  def list
    @users = User.all

    render "list"
  end

  def create
    render 'create'
  end

end
