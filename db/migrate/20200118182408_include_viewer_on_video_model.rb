class IncludeViewerOnVideoModel < ActiveRecord::Migration[5.2]
  def up
    add_reference :video_views, :viewer
  end

  def down
    remove_reference :video_views, :viewer
  end
end
