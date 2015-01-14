class Admin::PurchasesController < Admin::ApplicationController
  before_action :set_admin_purchase, only: [:show, :edit, :update, :destroy]

  # GET /admin/purchases
  # GET /admin/purchases.json
  def index
    @admin_purchases = Admin::Purchase.all
  end

  # GET /admin/purchases/1
  # GET /admin/purchases/1.json
  def show
  end

  # GET /admin/purchases/new
  def new
    @admin_purchase = Admin::Purchase.new
  end

  # GET /admin/purchases/1/edit
  def edit
  end

  # POST /admin/purchases
  # POST /admin/purchases.json
  def create
    @admin_purchase = Admin::Purchase.new(admin_purchase_params)

    respond_to do |format|
      if @admin_purchase.save
        format.html { redirect_to @admin_purchase, notice: 'Purchase was successfully created.' }
        format.json { render :show, status: :created, location: @admin_purchase }
      else
        format.html { render :new }
        format.json { render json: @admin_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/purchases/1
  # PATCH/PUT /admin/purchases/1.json
  def update
    respond_to do |format|
      if @admin_purchase.update(admin_purchase_params)
        format.html { redirect_to @admin_purchase, notice: 'Purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_purchase }
      else
        format.html { render :edit }
        format.json { render json: @admin_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/purchases/1
  # DELETE /admin/purchases/1.json
  def destroy
    @admin_purchase.destroy
    respond_to do |format|
      format.html { redirect_to admin_purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_purchase
      @admin_purchase = Admin::Purchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_purchase_params
      params.require(:admin_purchase).permit(:supplier_id, :product_id, :cpu, :qty, :total, :deliver_at, :status)
    end
end
