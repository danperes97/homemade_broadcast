module VideoCategoriesHelper
  CATEGORY_ICONS = {
    news:     'rss-square',
    sports:   'snowboarding',
    car:      'car',
    travel:   'plane',
    standup:  'microphone-slash',
    tech:     'microchip',
    kids:     'child',
    music:    'music',
    games:    'gamepad'
  }.freeze

  def categories_and_icons(categories)
    categories.map do |category|
      {
        name: category.tag_name,
        icon: CATEGORY_ICONS[category.tag_name.downcase.split.join.to_sym]
      }
    end
  end
end
