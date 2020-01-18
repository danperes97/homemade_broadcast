class ApplicationController < ActionController::Base
  before_action :set_viewer
  protect_from_forgery with: :exception, prepend: true


  def set_viewer
    @viewer = Viewer.find_or_create_by!(ip: request.remote_ip)
  end
end
