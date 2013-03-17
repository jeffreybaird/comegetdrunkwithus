class RsvpsController < ApplicationController
  def new
    @user = User.new
  end
end
