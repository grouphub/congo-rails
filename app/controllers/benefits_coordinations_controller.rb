class BenefitsCoordinationsController < ApplicationController
  before_action :set_benefits_coordination, only: [:show, :edit, :update, :destroy]

  # GET /benefits_coordinations
  # GET /benefits_coordinations.json
  def index
    @benefits_coordinations = BenefitsCoordination.all
  end

  # GET /benefits_coordinations/1
  # GET /benefits_coordinations/1.json
  def show
  end

  # GET /benefits_coordinations/new
  def new
    @benefits_coordination = BenefitsCoordination.new
  end

  # GET /benefits_coordinations/1/edit
  def edit
  end

  # POST /benefits_coordinations
  # POST /benefits_coordinations.json
  def create
    @benefits_coordination = BenefitsCoordination.new(benefits_coordination_params)

    respond_to do |format|
      if @benefits_coordination.save
        format.html { redirect_to @benefits_coordination, notice: 'Benefits coordination was successfully created.' }
        format.json { render :show, status: :created, location: @benefits_coordination }
      else
        format.html { render :new }
        format.json { render json: @benefits_coordination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benefits_coordinations/1
  # PATCH/PUT /benefits_coordinations/1.json
  def update
    respond_to do |format|
      if @benefits_coordination.update(benefits_coordination_params)
        format.html { redirect_to @benefits_coordination, notice: 'Benefits coordination was successfully updated.' }
        format.json { render :show, status: :ok, location: @benefits_coordination }
      else
        format.html { render :edit }
        format.json { render json: @benefits_coordination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefits_coordinations/1
  # DELETE /benefits_coordinations/1.json
  def destroy
    @benefits_coordination.destroy
    respond_to do |format|
      format.html { redirect_to benefits_coordinations_url, notice: 'Benefits coordination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefits_coordination
      @benefits_coordination = BenefitsCoordination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def benefits_coordination_params
      params.require(:benefits_coordination).permit(:group_or_policy_number, :payer_responsibility, :status)
    end
end
