class AddColumnToTopic < ActiveRecord::Migration
  def change
  	add_column :topics, :operand, :integer
  end
end
