class ApplicationController < ActionController::Base
  before_action :set_viewer
  protect_from_forgery except: [:sign_in, :sign_up]

  def set_viewer
    @viewer = Viewer.find_or_create_by!(ip: request.remote_ip)
  end
end
