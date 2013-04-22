class BusinessesController < ApplicationController
  before_action :get_owner
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  helper_method :sort_column, :sort_direction


  def index
    @businesses = @owner.businesses
  end

  def show
    @customer = @business.customers.order(sort_column + " " + sort_direction)
  end

  def new
    @owner = Owner.find(params[:owner_id])
    @business = @owner.businesses.build
  end

  def edit
  end

  def create
    @business = @owner.businesses.new(business_params)

    respond_to do |format|
      if @business.save
        format.html { redirect_to owner_businesses_url(@owner), notice: 'Business was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business }
      else
        format.html { render action: 'new' }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to owner_businesses_url(@owner), notice: 'Business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to owner_businesses_url(@owner) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = @owner.businesses.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.require(:business).permit(:name, :street_address, :additional, :city, :state, :zip_code, :description, :owner_id)
    end

    def get_owner
      @owner = Owner.find(params[:owner_id])
    end

    def sort_column
      @business.customers.column_names.include?(params[:sort]) ? params[:sort] : "name"     
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
