class FlawsController < ApplicationController
  before_action :set_flaw, only: [:show, :edit, :update, :destroy]

  # GET /flaws
  # GET /flaws.json
  def index
    @flaws = Flaw.all
  end

  # GET /flaws/1
  # GET /flaws/1.json
  def show
  end

  # GET /flaws/new
  def new
    @flaw = Flaw.new
  end

  # GET /flaws/1/edit
  def edit
  end

  # POST /flaws
  # POST /flaws.json
  def create
    @flaw = Flaw.new(flaw_params)

    respond_to do |format|
      if @flaw.save
        format.html { redirect_to @flaw, notice: 'Flaw was successfully created.' }
        format.json { render :show, status: :created, location: @flaw }
      else
        format.html { render :new }
        format.json { render json: @flaw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flaws/1
  # PATCH/PUT /flaws/1.json
  def update
    respond_to do |format|
      if @flaw.update(flaw_params)
        format.html { redirect_to @flaw, notice: 'Flaw was successfully updated.' }
        format.json { render :show, status: :ok, location: @flaw }
      else
        format.html { render :edit }
        format.json { render json: @flaw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flaws/1
  # DELETE /flaws/1.json
  def destroy
    @flaw.destroy
    respond_to do |format|
      format.html { redirect_to flaws_url, notice: 'Flaw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flaw
      @flaw = Flaw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flaw_params
      params.require(:flaw).permit(:model_id, :mileage, :description, :cost_estimate)
    end
end
