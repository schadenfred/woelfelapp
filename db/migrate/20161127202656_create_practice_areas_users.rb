class CreatePracticeAreasUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_areas_users do |t|
      t.integer :practice_area_id
      t.integer :user_id

      t.timestamps
    end
  end
end
