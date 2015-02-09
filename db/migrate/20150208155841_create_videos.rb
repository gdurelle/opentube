class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video
      t.string :title
      t.string :md5hash

      t.timestamps null: false
    end
  end
end
