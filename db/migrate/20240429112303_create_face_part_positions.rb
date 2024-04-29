class CreateFacePartPositions < ActiveRecord::Migration[7.0]
  def change
    create_table :face_part_positions do |t|
      t.references :face_part_set, null: false, foreign_key: true
      t.string :face_part, null: false
      t.integer :x_position
      t.integer :y_position

      t.timestamps
    end
  end
end
