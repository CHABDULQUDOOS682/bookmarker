class CreateAppBookmarks < ActiveRecord::Migration[8.0]
  def change
    create_table :app_bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.timestamps
    end
  end
end
