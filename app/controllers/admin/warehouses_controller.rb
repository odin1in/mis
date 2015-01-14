class Admin::WarehousesController < Admin::ApplicationController
  before_action :set_admin_warehouse, only: [:show, :edit, :update, :destroy]

  # GET /admin/warehouses
  # GET /admin/warehouses.json
  def index
    @admin_warehouses = Admin::Warehouse.all
  end

  # GET /admin/warehouses/1
  # GET /admin/warehouses/1.json
  def show
  end

  # GET /admin/warehouses/new
  def new
    @admin_warehouse = Admin::Warehouse.new
  end

  # GET /admin/warehouses/1/edit
  def edit
  end

  # POST /admin/warehouses
  # POST /admin/warehouses.json
  def create
    @admin_warehouse = Admin::Warehouse.new(admin_warehouse_params)

    respond_to do |format|
      if @admin_warehouse.save
        format.html { redirect_to @admin_warehouse, notice: 'Warehouse was successfully created.' }
        format.json { render :show, status: :created, location: @admin_warehouse }
      else
        format.html { render :new }
        format.json { render json: @admin_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/warehouses/1
  # PATCH/PUT /admin/warehouses/1.json
  def update
    respond_to do |format|
      if @admin_warehouse.update(admin_warehouse_params)
        format.html { redirect_to @admin_warehouse, notice: 'Warehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_warehouse }
      else
        format.html { render :edit }
        format.json { render json: @admin_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/warehouses/1
  # DELETE /admin/warehouses/1.json
  def destroy
    @admin_warehouse.destroy
    respond_to do |format|
      format.html { redirect_to admin_warehouses_url, notice: 'Warehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_warehouse
      @admin_warehouse = Admin::Warehouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_warehouse_params
      params.require(:admin_warehouse).permit(:name, :address)
    end
end
