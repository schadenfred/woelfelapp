# This migration comes from galleriable (originally 20160913051502)
class CreateGalleriableSlides < ActiveRecord::Migration[5.0]
  def change

    enable_extension "hstore"

    create_table :galleriable_slides do |t|
      t.integer :photo_id
      t.integer :gallery_id
      t.hstore :properties

      t.timestamps
    end

    add_index :galleriable_slides, [:photo_id, :gallery_id]
  end
end
