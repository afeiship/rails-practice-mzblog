class Admin::BaseController < ApplicationController

  before_action :authenticate
  helper_method :sign_in?, :current_user

  layout 'admin'

  def sign_in?
    !!session[:user_id]
  end

  def sign_in user
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil;
  end

  def current_user
    User.find(session[:user_id]) if sign_in?
  end

  def authenticate
    unless sign_in?
      redirect_to admin_sign_in_path
    end
  end
end

