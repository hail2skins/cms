class PackagesController < ApplicationController
  before_action :get_business_and_owner
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  # GET /packages
  # GET /packages.json
  def index
    @packages = @business.packages
  end

  def show
  end

  def new
    @package = @business.packages.build
    @package.prices.build(params[:price])
  end


  def edit
    @package.prices ||= @package.prices.build(params[:price])
  end

  def create
    @package = @business.packages.new(package_params)

    respond_to do |format|
      if @package.save
        format.html { redirect_to business_packages_url(@business), notice: 'Package was successfully created.' }
        format.json { render action: 'show', status: :created, location: @package }
      else
        format.html { render action: 'new' }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to business_packages_url(@business), notice: 'Package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @package.destroy
    respond_to do |format|
      format.html { redirect_to business_packages_url(@business) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit(:name, :description, :business_id, :count, :prices_attributes => [:id, :amount], :service_ids=>[])
    end

    def get_business_and_owner
      @business = Business.find(params[:business_id])
      @owner = @business.owner
    end
end
