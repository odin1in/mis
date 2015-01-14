class Admin::SuppliersController < Admin::ApplicationController
  before_action :set_admin_supplier, only: [:show, :edit, :update, :destroy]

  # GET /admin/suppliers
  # GET /admin/suppliers.json
  def index
    @admin_suppliers = Admin::Supplier.all
  end

  # GET /admin/suppliers/1
  # GET /admin/suppliers/1.json
  def show
  end

  # GET /admin/suppliers/new
  def new
    @admin_supplier = Admin::Supplier.new
  end

  # GET /admin/suppliers/1/edit
  def edit
  end

  # POST /admin/suppliers
  # POST /admin/suppliers.json
  def create
    @admin_supplier = Admin::Supplier.new(admin_supplier_params)

    respond_to do |format|
      if @admin_supplier.save
        format.html { redirect_to @admin_supplier, notice: 'Supplier was successfully created.' }
        format.json { render :show, status: :created, location: @admin_supplier }
      else
        format.html { render :new }
        format.json { render json: @admin_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/suppliers/1
  # PATCH/PUT /admin/suppliers/1.json
  def update
    respond_to do |format|
      if @admin_supplier.update(admin_supplier_params)
        format.html { redirect_to @admin_supplier, notice: 'Supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_supplier }
      else
        format.html { render :edit }
        format.json { render json: @admin_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/suppliers/1
  # DELETE /admin/suppliers/1.json
  def destroy
    @admin_supplier.destroy
    respond_to do |format|
      format.html { redirect_to admin_suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_supplier
      @admin_supplier = Admin::Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_supplier_params
      params.require(:admin_supplier).permit(:name, :address, :phone)
    end
end
