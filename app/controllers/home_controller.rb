class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :secure
  def index
  end

  def secure
    render :json => {:secure => "yes"}
  end

end
