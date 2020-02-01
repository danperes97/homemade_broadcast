class CreateCategories < ActiveRecord::Migration[5.2]
  def up
    puts "---creating categories-----"
    Category.new(tag_name: "News").save
    Category.new(tag_name: "Car").save
    Category.new(tag_name: "Travel").save
    Category.new(tag_name: "Stand up").save
    Category.new(tag_name: "Tech").save
    Category.new(tag_name: "Kids").save
    Category.new(tag_name: "Music").save
    Category.new(tag_name: "Games").save
  end

  def down
    Category.all.destroy_all
  end
end
