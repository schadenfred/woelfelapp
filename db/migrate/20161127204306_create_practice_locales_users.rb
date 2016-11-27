class CreatePracticeLocalesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_locales_users do |t|

      t.integer :practice_locale_id
      t.integer :user_id

      t.timestamps
    end
  end
end
