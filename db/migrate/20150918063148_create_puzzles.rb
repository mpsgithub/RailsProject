class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.string :puzzle_image
      t.references :topic, index: true

      t.timestamps
    end
  end
end
