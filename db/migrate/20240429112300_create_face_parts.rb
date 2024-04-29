class CreateFaceParts < ActiveRecord::Migration[7.0]
  def change
    create_table :face_parts do |t|
      t.string :name
      t.string :part_type
      t.string :url

      t.timestamps
    end
  end
end
