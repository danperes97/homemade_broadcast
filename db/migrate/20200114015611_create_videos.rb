class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video
      t.string :thumb
      t.string :token
      t.references :user
      t.integer :views, default: 0

      t.timestamps
    end
  end
end
