class CreatePracticeAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_areas do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
