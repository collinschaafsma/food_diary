class SessionsController < Devise::SessionsController
  include Devise::Controllers::InternalHelpers
  prepend_before_filter :require_no_authentication, :only => [:new, :create]

  def new
    super
  end

  def create
    user = warden.authenticate(:scope => :user)

    if user
      user.reset_authentication_token!
      render :json => {:access_token => user.authentication_token, :token_type => "persistant"}
    else
      render :json => {:error => "invalid_grant"}
    end
  end

end

