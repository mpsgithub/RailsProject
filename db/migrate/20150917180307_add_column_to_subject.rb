class AddColumnToSubject < ActiveRecord::Migration
  def change
  	add_column :subjects, :image_link, :string
  end
end
