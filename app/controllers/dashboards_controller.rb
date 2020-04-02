class DashboardsController < ApplicationController

  def show
    @user = policy_scope(current_user)
    authorize @user
  end

  def edit

  end

  def update

  end
end
