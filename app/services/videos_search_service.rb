class VideosSearchService
  def self.search(options = {})
    if options[:query].present?
      Video.where("lower(title) LIKE ?", "%#{options[:query].downcase}%")
    elsif options[:category].present?
      Video.joins(:categories).where(categories: { tag_name: options[:category] })
    end
  end
end
