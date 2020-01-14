class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video
      t.string :thumb
      t.references :user

      t.timestamps
    end
  end
end
