class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.references :subject, index: true
      t.string :image_link
      t.timestamps
    end
  end
end
