class ReportParameterDataController < ApplicationController
  before_action :set_report_parameter_datum, only: [:show, :edit, :update, :destroy]

  # GET /report_parameter_data
  # GET /report_parameter_data.json
  def index
    @report_parameter_data = ReportParameterDatum.all
  end

  # GET /report_parameter_data/1
  # GET /report_parameter_data/1.json
  def show
  end

  # GET /report_parameter_data/new
  def new
    @report_parameter_datum = ReportParameterDatum.new
  end

  # GET /report_parameter_data/1/edit
  def edit
  end

  # POST /report_parameter_data
  # POST /report_parameter_data.json
  def create
    @report_parameter_datum = ReportParameterDatum.new(report_parameter_datum_params)

    respond_to do |format|
      if @report_parameter_datum.save
        format.html { redirect_to @report_parameter_datum, notice: 'Report parameter datum was successfully created.' }
        format.json { render :show, status: :created, location: @report_parameter_datum }
      else
        format.html { render :new }
        format.json { render json: @report_parameter_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_parameter_data/1
  # PATCH/PUT /report_parameter_data/1.json
  def update
    respond_to do |format|
      if @report_parameter_datum.update(report_parameter_datum_params)
        format.html { redirect_to @report_parameter_datum, notice: 'Report parameter datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_parameter_datum }
      else
        format.html { render :edit }
        format.json { render json: @report_parameter_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_parameter_data/1
  # DELETE /report_parameter_data/1.json
  def destroy
    @report_parameter_datum.destroy
    respond_to do |format|
      format.html { redirect_to report_parameter_data_url, notice: 'Report parameter datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_parameter_datum
      @report_parameter_datum = ReportParameterDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_parameter_datum_params
      params.require(:report_parameter_datum).permit(:Value, :Longitude, :Latitude, :report_id, :report_parameter_id)
    end
end
