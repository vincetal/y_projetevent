class UserController < ApplicationController
  def show
    @user = current_user
    @events = []

    Event.where(admin_id: current_user.id).find_each do |my_event|
      @events << my_event
    end

  end
end
