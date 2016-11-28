# This migration comes from galleriable (originally 20160913003004)
class CreateGalleriablePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :galleriable_photos do |t|
      t.string :image_uid
      t.string :image_name
      t.string :name
      t.string :caption
      t.integer :photographer_id
      t.references :photographable, polymorphic: true, index: { name: "by_photographable" }

      t.timestamps
    end
  end
end
