class Admin::FeedbacksController < Admin::ApplicationController
  before_action :set_admin_feedback, only: [:show, :edit, :update, :destroy]

  # GET /admin/feedbacks
  # GET /admin/feedbacks.json
  def index
    @admin_feedbacks = Admin::Feedback.all
  end

  # GET /admin/feedbacks/1
  # GET /admin/feedbacks/1.json
  def show
  end

  # GET /admin/feedbacks/new
  def new
    @admin_feedback = Admin::Feedback.new
  end

  # GET /admin/feedbacks/1/edit
  def edit
  end

  # POST /admin/feedbacks
  # POST /admin/feedbacks.json
  def create
    @admin_feedback = Admin::Feedback.new(admin_feedback_params)

    respond_to do |format|
      if @admin_feedback.save
        format.html { redirect_to @admin_feedback, notice: 'Feedback was successfully created.' }
        format.json { render :show, status: :created, location: @admin_feedback }
      else
        format.html { render :new }
        format.json { render json: @admin_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/feedbacks/1
  # PATCH/PUT /admin/feedbacks/1.json
  def update
    respond_to do |format|
      if @admin_feedback.update(admin_feedback_params)
        format.html { redirect_to @admin_feedback, notice: 'Feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_feedback }
      else
        format.html { render :edit }
        format.json { render json: @admin_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/feedbacks/1
  # DELETE /admin/feedbacks/1.json
  def destroy
    @admin_feedback.destroy
    respond_to do |format|
      format.html { redirect_to admin_feedbacks_url, notice: 'Feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_feedback
      @admin_feedback = Admin::Feedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_feedback_params
      params.require(:admin_feedback).permit(:email, :name, :phone, :note, :kind)
    end
end
