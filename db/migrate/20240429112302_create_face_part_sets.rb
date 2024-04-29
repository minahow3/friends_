class CreateFacePartSets < ActiveRecord::Migration[7.0]
  def change
    create_table :face_part_sets do |t|
      t.references :person, null: false, foreign_key: true
      t.string :contour, null: true
      t.string :eyes, null: true
      t.string :nose, null: true
      t.string :mouth, null: true
      t.string :cheeks, null: true
      t.string :eyebrows, null: true

      t.timestamps
    end
  end
end
