class CreateFacePartSets < ActiveRecord::Migration[7.0]
  def change
    create_table :face_part_sets do |t|
      t.references :person, null: false, foreign_key: true
      t.string :contour, null: false
      t.string :eyes, null: false
      t.string :nose, null: false
      t.string :mouth, null: false
      t.string :cheeks, null: false
      t.string :eyebrows, null: false

      t.timestamps
    end
  end
end
