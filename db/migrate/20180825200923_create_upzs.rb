class CreateUpzs < ActiveRecord::Migration[5.2]
  def change
    create_table :upzs do |t|
      t.string :Name
      t.text :Georeference
      t.references :district_area, foreign_key: true

      t.timestamps
    end
  end
end
