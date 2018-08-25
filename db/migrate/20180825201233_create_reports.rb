class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.decimal :Longitude
      t.decimal :Latitude
      t.references :user, foreign_key: true
      t.references :report_type, foreign_key: true

      t.timestamps
    end
  end
end
