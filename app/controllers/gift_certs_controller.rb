class GiftCertsController < ApplicationController
  before_action :set_gift_cert, only: [:show, :edit, :update, :destroy]

  # GET /gift_certs
  # GET /gift_certs.json
  def index
    @gift_certs = GiftCert.all
  end

  # GET /gift_certs/1
  # GET /gift_certs/1.json
  def show
  end

  # GET /gift_certs/new
  def new
    @gift_cert = GiftCert.new
  end

  # GET /gift_certs/1/edit
  def edit
  end

  # POST /gift_certs
  # POST /gift_certs.json
  def create
    @gift_cert = GiftCert.new(gift_cert_params)

    respond_to do |format|
      if @gift_cert.save
        format.html { redirect_to @gift_cert, notice: 'Gift cert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gift_cert }
      else
        format.html { render action: 'new' }
        format.json { render json: @gift_cert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_certs/1
  # PATCH/PUT /gift_certs/1.json
  def update
    respond_to do |format|
      if @gift_cert.update(gift_cert_params)
        format.html { redirect_to @gift_cert, notice: 'Gift cert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gift_cert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_certs/1
  # DELETE /gift_certs/1.json
  def destroy
    @gift_cert.destroy
    respond_to do |format|
      format.html { redirect_to gift_certs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_cert
      @gift_cert = GiftCert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_cert_params
      params.require(:gift_cert).permit(:name, :number, :value, :description, :customer_id, :redeemed, :date_redeemed)
    end
end
