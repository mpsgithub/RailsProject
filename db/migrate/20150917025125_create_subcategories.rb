class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.references :category, index: true
      t.string :image_link

      t.timestamps
    end
  end
end
