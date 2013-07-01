class SocialPersonController < ApplicationController
  before_filter :authenticate_user!

  def index
  	puts user_signed_in?
  	# puts current_user.inspect
  	# puts current_user.email
  end

  def new
  end
end
