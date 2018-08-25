class CreateReportParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :report_parameters do |t|
      t.string :Name
      t.string :DataType
      t.boolean :Optional
      t.string :HtmlVisualization
      t.references :report_type, foreign_key: true

      t.timestamps
    end
  end
end
