class VideosSearchService
  def self.search(options = {})
    if options[:query].present?
      search_by_query(options[:query])
    elsif options[:category].present?
      search_by_category(options[:category])
    end
  end

  private

  def self.search_by_query(query)
    Video.where("lower(title) LIKE ?", "%#{query.downcase}%")
  end

  def self.search_by_category(category)
    Video.joins(:categories).where(categories: { tag_name: category })
  end
end
