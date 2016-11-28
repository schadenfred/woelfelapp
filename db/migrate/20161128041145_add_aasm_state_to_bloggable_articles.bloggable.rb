# This migration comes from bloggable (originally 20161101200328)
class AddAasmStateToBloggableArticles < ActiveRecord::Migration
  def change
    add_column :bloggable_articles, :aasm_state, :string
  end
end
