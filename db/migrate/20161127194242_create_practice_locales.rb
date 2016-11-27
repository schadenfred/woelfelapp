class CreatePracticeLocales < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_locales do |t|
      t.string :name
      t.text :description
      t.integer :address_id

      t.timestamps
    end
  end
end
