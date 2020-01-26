class CreateCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :tag_name
    end

    Category.new(tag_name: "News").save
    Category.new(tag_name: "Sports").save
    Category.new(tag_name: "Car").save
    Category.new(tag_name: "Movie").save
    Category.new(tag_name: "Opinion").save
    Category.new(tag_name: "Politics").save
    Category.new(tag_name: "Travel").save
    Category.new(tag_name: "Soccer").save
    Category.new(tag_name: "UFC").save
    Category.new(tag_name: "Stand up").save
    Category.new(tag_name: "Tech").save
    Category.new(tag_name: "Kids").save
    Category.new(tag_name: "Music").save
    Category.new(tag_name: "Memes").save
  end
end
