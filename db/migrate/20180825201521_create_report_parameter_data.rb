class CreateReportParameterData < ActiveRecord::Migration[5.2]
  def change
    create_table :report_parameter_data do |t|
      t.string :Value
      t.decimal :Longitude
      t.decimal :Latitude
      t.references :report, foreign_key: true
      t.references :report_parameter, foreign_key: true

      t.timestamps
    end
  end
end
