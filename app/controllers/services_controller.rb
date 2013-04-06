class ServicesController < ApplicationController
  before_action :get_business_and_owner
  before_action :set_service, only: [:show, :edit, :update, :destroy]

   def index
    @services = @business.services
  end

  def show
  end

  def new
    @service = @business.services.build
  end

  def edit
  end

  def create
    @service = @business.services.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to business_services_url(@business), notice: 'Service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service }
      else
        format.html { render action: 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to business_services_url(@business), notice: 'Service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to business_services_url(@business) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:name, :description, :cost, :business_id)
    end

    def get_business_and_owner
      @business = Business.find(params[:business_id])
      @owner = @business.owner      
    end
end
