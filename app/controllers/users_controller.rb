class UsersController < ApplicationController



  def new
    @user                   = User.new
    @user.party             = Party.new
    @user.party.reservation = Reservation.new
  end

  def create

    @user                              = User.new
    @user.party                        = Party.new
    @user.party.reservation            = Reservation.new
    @user.first_name                   = params[:user][:first_name]
    @user.last_name                    = params[:user][:last_name]
    @user.email                        = params[:user][:email]
    @user.message                      = params[:user][:message]
    @user.attending                    = params[:user][:attending]


    @user.party.party_name             = params[:user][:last_name]

    @user.party.reservation.party_size = params[:user][:party_size]
    @user.party.mailing_address        = params[:user][:mailing_address]
    @user.party.city                   = params[:user][:city]
    @user.party.state                  = params[:user][:state]
    @user.party.zip                    = params[:user][:zip]
    @user.save!

  end

end
