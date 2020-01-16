class CreateVideoViews < ActiveRecord::Migration[5.2]
  def change
    create_table :video_views do |t|
      t.references :user
      t.references :video

      t.timestamps
    end
  end
end
