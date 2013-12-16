class UserSwitch::UserSwitchController < ApplicationController

  def switch
    sign_out params[:scope]
    sign_in (params[:scope].camelize.constantize).find(params[:resource_id])

    redirect_to request.referer
  end

end