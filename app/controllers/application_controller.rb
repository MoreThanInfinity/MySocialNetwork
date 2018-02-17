class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  respond_to :js, :html
  before_action :set_current_user
  include PublicActivity::StoreController
  require 'will_paginate/array'

  def set_current_user
    User.current = current_user
  end
end
