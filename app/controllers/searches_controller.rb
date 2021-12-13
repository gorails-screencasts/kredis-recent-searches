class SearchesController < ApplicationController
  def index
    current_user.recent_searches.prepend(params[:query]) if params[:query].present?
  end

  private

  def current_user
    @current_user ||= User.first
  end
  helper_method :current_user
end
