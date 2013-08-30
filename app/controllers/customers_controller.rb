class CustomersController < ApplicationController
  before_action :get_business_and_owner
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  def index
    @customers = @business.customers.order(sort_column + " " + sort_direction)
  end

  def show
  end

  def new
    @customer = Customer.new
    @customer.build_address(params[:address])
    @customer.phones.build(params[:phones])
  end

  def edit
    @customer.address ||= @customer.build_address(params[:address])
    @customer.phones ||= @customer.phones.build(params[:phones])
  end

  def create
    @customer = @business.customers.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to [@owner, @business], notice: 'Customer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to [@owner, @business], notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to business_customers_url(@business) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = @business.customers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :middle_name, :email, :business_id, :referred_by, :address_attributes => [:id, :line1, :line2, :city, :state, :zip], :phones_attributes => [:id, :number], :customers_packages_attributes => [:date_completed, :date_purchased], :packages_ids => [])
    end

    def get_business_and_owner
      @business = Business.find(params[:business_id])
      @owner = @business.owner      
    end

    def sort_column
      Customer.column_names.include?(params[:sort]) ? params[:sort] : "first_name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
