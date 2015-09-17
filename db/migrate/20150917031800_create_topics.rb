class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.references :subcategory, index: true
      t.string :video_link

      t.timestamps
    end
  end
end
