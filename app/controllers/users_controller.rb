class UsersController < ApplicationController



  def show
    @user                   = User.new
    @user.party             = Party.new
  end

  def create

    @user                  = User.new(params[:user])
    @user.party            = Party.new
    @user.party.party_size = params[:party][:party_size]

  end

end
