class PracticeAreasController < ApplicationController
  before_action :set_practice_area, only: [:show, :edit, :update, :destroy]

  # GET /practice_areas
  # GET /practice_areas.json
  def index
    @practice_areas = PracticeArea.all
  end

  # GET /practice_areas/1
  # GET /practice_areas/1.json
  def show
  end

  # GET /practice_areas/new
  def new
    @practice_area = PracticeArea.new
  end

  # GET /practice_areas/1/edit
  def edit
  end

  # POST /practice_areas
  # POST /practice_areas.json
  def create
    @practice_area = PracticeArea.new(practice_area_params)

    respond_to do |format|
      if @practice_area.save
        format.html { redirect_to @practice_area, notice: 'Practice area was successfully created.' }
        format.json { render :show, status: :created, location: @practice_area }
      else
        format.html { render :new }
        format.json { render json: @practice_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practice_areas/1
  # PATCH/PUT /practice_areas/1.json
  def update
    respond_to do |format|
      if @practice_area.update(practice_area_params)
        format.html { redirect_to @practice_area, notice: 'Practice area was successfully updated.' }
        format.json { render :show, status: :ok, location: @practice_area }
      else
        format.html { render :edit }
        format.json { render json: @practice_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_areas/1
  # DELETE /practice_areas/1.json
  def destroy
    @practice_area.destroy
    respond_to do |format|
      format.html { redirect_to practice_areas_url, notice: 'Practice area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice_area
      @practice_area = PracticeArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practice_area_params
      params.require(:practice_area).permit(:name, :description)
    end
end
