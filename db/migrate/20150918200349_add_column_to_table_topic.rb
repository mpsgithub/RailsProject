class AddColumnToTableTopic < ActiveRecord::Migration
  def change
  	add_column :topics, :image_link, :string
  end
end
