class Admin::AuditsController < Admin::ApplicationController
  before_action :set_admin_audit, only: [:show, :edit, :update, :destroy]

  # GET /admin/audits
  # GET /admin/audits.json
  def index
    @admin_audits = Admin::Audit.all
  end

  # GET /admin/audits/1
  # GET /admin/audits/1.json
  def show
  end

  # GET /admin/audits/new
  def new
    @admin_audit = Admin::Audit.new
  end

  # GET /admin/audits/1/edit
  def edit
  end

  # POST /admin/audits
  # POST /admin/audits.json
  def create
    @admin_audit = Admin::Audit.new(admin_audit_params)

    respond_to do |format|
      if @admin_audit.save
        format.html { redirect_to @admin_audit, notice: 'Audit was successfully created.' }
        format.json { render :show, status: :created, location: @admin_audit }
      else
        format.html { render :new }
        format.json { render json: @admin_audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/audits/1
  # PATCH/PUT /admin/audits/1.json
  def update
    respond_to do |format|
      if @admin_audit.update(admin_audit_params)
        format.html { redirect_to @admin_audit, notice: 'Audit was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_audit }
      else
        format.html { render :edit }
        format.json { render json: @admin_audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/audits/1
  # DELETE /admin/audits/1.json
  def destroy
    @admin_audit.destroy
    respond_to do |format|
      format.html { redirect_to admin_audits_url, notice: 'Audit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_audit
      @admin_audit = Admin::Audit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_audit_params
      params.require(:admin_audit).permit(:auditable_id, :associated_type, :associated_id, :associated_type, :user_id, :user_type, :username, :action, :audited_changes)
    end
end
