module VideosHelper
  def search_params_to_string
    if params[:category].present?
      "##{params[:category]}"
    elsif params[:query].present?
      "#{params[:query]}"
    end
  end
end
