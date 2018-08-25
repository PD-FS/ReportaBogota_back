class CreateDistrictAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :district_areas do |t|
      t.string :Name
      t.integer :ZipCodeBegins
      t.integer :ZipCodeEnds

      t.timestamps
    end
  end
end
