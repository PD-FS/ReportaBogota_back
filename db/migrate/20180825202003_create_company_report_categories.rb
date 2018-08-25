class CreateCompanyReportCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :company_report_categories do |t|
      t.references :category, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
