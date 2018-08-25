class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.integer :PointsToRedeem
      t.boolean :Enabled

      t.timestamps
    end
  end
end
