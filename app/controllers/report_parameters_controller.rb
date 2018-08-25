class ReportParametersController < ApplicationController
  before_action :set_report_parameter, only: [:show, :edit, :update, :destroy]

  # GET /report_parameters
  # GET /report_parameters.json
  def index
    @report_parameters = ReportParameter.all
  end

  # GET /report_parameters/1
  # GET /report_parameters/1.json
  def show
  end

  # GET /report_parameters/new
  def new
    @report_parameter = ReportParameter.new
  end

  # GET /report_parameters/1/edit
  def edit
  end

  # POST /report_parameters
  # POST /report_parameters.json
  def create
    @report_parameter = ReportParameter.new(report_parameter_params)

    respond_to do |format|
      if @report_parameter.save
        format.html { redirect_to @report_parameter, notice: 'Report parameter was successfully created.' }
        format.json { render :show, status: :created, location: @report_parameter }
      else
        format.html { render :new }
        format.json { render json: @report_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_parameters/1
  # PATCH/PUT /report_parameters/1.json
  def update
    respond_to do |format|
      if @report_parameter.update(report_parameter_params)
        format.html { redirect_to @report_parameter, notice: 'Report parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_parameter }
      else
        format.html { render :edit }
        format.json { render json: @report_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_parameters/1
  # DELETE /report_parameters/1.json
  def destroy
    @report_parameter.destroy
    respond_to do |format|
      format.html { redirect_to report_parameters_url, notice: 'Report parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_parameter
      @report_parameter = ReportParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_parameter_params
      params.require(:report_parameter).permit(:Name, :DataType, :Optional, :HtmlVisualization, :report_type_id)
    end
end
