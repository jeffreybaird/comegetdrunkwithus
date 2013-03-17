class UsersController < ApplicationController

  def show

    @user = User.new(params[:user])
    @user.save
    puts "I'm in the show method #{params[:user]}"

  end

  def create

    @user = User.new(params[:user])
    puts "I'm in the create method #{params[:user]}"

  end

  def new

    @user = User.new(params[:user])
    puts "I'm in the new method #{params[:user]}"

  end

end
