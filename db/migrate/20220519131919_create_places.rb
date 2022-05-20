class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :city
      t.string :region
      t.string :state
      t.integer :number

      t.timestamps
    end
  end
end
