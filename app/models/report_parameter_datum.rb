class ReportParameterDatum < ApplicationRecord
  belongs_to :report
  belongs_to :report_parameter
end
