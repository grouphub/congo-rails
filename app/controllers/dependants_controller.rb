class DependantsController < ApplicationController
  before_action :set_dependant, only: [:show, :edit, :update, :destroy]

  # GET /dependants
  # GET /dependants.json
  def index
    @dependants = Dependant.all
  end

  # GET /dependants/1
  # GET /dependants/1.json
  def show
  end

  # GET /dependants/new
  def new
    @dependant = Dependant.new
  end

  # GET /dependants/1/edit
  def edit
  end

  # POST /dependants
  # POST /dependants.json
  def create
    @dependant = Dependant.new(dependant_params)

    respond_to do |format|
      if @dependant.save
        format.html { redirect_to @dependant, notice: 'Dependant was successfully created.' }
        format.json { render :show, status: :created, location: @dependant }
      else
        format.html { render :new }
        format.json { render json: @dependant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependants/1
  # PATCH/PUT /dependants/1.json
  def update
    respond_to do |format|
      if @dependant.update(dependant_params)
        format.html { redirect_to @dependant, notice: 'Dependant was successfully updated.' }
        format.json { render :show, status: :ok, location: @dependant }
      else
        format.html { render :edit }
        format.json { render json: @dependant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependants/1
  # DELETE /dependants/1.json
  def destroy
    @dependant.destroy
    respond_to do |format|
      format.html { redirect_to dependants_url, notice: 'Dependant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependant
      @dependant = Dependant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dependant_params
      params.require(:dependant).permit(:first_name, :middle_name, :last_name, :ssn, :birth_date, :gender)
    end
end
