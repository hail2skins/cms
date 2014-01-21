class VisitsController < ApplicationController
  before_action :get_customer_business_and_owner
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def index
    @visits = @customer.visits
  end

  def show
  end

  def new
    @visit = @customer.visits.new
  end

  def edit
  end

  def create
    @visit = @customer.visits.new(visit_params)

    respond_to do |format|
      if @visit.save
        format.html { redirect_to [@owner, @business], notice: 'Visit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @visit }
      else
        format.html { render action: 'new' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to [@owner, @business], notice: 'Visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to customer_visits_url(@customer) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = @customer.visits.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_params
      params.require(:visit).permit(:visit_notes, :date_of_visit, :customer_id, :service_ids=>[])
    end

    def get_customer_business_and_owner
      @customer = Customer.find(params[:customer_id])
      @business = @customer.business
      @owner = @business.owner
    end
end
