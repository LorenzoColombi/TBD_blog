class RemoveDestriptionFromCategory < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :destription, :text
  end
end
