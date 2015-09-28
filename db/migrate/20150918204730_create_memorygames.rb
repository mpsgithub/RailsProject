class CreateMemorygames < ActiveRecord::Migration
  def change
    create_table :memorygames do |t|
      t.string :card_array
      t.references :topic, index: true

      t.timestamps
    end
  end
end
