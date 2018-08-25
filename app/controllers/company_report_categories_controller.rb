class CompanyReportCategoriesController < ApplicationController
  before_action :set_company_report_category, only: [:show, :edit, :update, :destroy]

  # GET /company_report_categories
  # GET /company_report_categories.json
  def index
    @company_report_categories = CompanyReportCategory.all
  end

  # GET /company_report_categories/1
  # GET /company_report_categories/1.json
  def show
  end

  # GET /company_report_categories/new
  def new
    @company_report_category = CompanyReportCategory.new
  end

  # GET /company_report_categories/1/edit
  def edit
  end

  # POST /company_report_categories
  # POST /company_report_categories.json
  def create
    @company_report_category = CompanyReportCategory.new(company_report_category_params)

    respond_to do |format|
      if @company_report_category.save
        format.html { redirect_to @company_report_category, notice: 'Company report category was successfully created.' }
        format.json { render :show, status: :created, location: @company_report_category }
      else
        format.html { render :new }
        format.json { render json: @company_report_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_report_categories/1
  # PATCH/PUT /company_report_categories/1.json
  def update
    respond_to do |format|
      if @company_report_category.update(company_report_category_params)
        format.html { redirect_to @company_report_category, notice: 'Company report category was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_report_category }
      else
        format.html { render :edit }
        format.json { render json: @company_report_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_report_categories/1
  # DELETE /company_report_categories/1.json
  def destroy
    @company_report_category.destroy
    respond_to do |format|
      format.html { redirect_to company_report_categories_url, notice: 'Company report category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_report_category
      @company_report_category = CompanyReportCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_report_category_params
      params.require(:company_report_category).permit(:category_id, :company_id)
    end
end
