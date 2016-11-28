# This migration comes from galleriable (originally 20160913042947)
class CreateGalleriableGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleriable_galleries do |t|
      t.string :name
      t.references :galleriable, polymorphic: true, index: { name: "by_galleriable"}

      t.timestamps
    end
  end
end
