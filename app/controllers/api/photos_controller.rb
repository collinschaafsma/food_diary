class Api::PhotosController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_photo, :only => [:edit, :update, :destroy]

  def find_photo

  end

  def index
    render :json => Photo.all, :callback => params[:callback]
  end

  def new
  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy

  end
end
