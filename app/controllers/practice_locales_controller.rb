class PracticeLocalesController < ApplicationController
  before_action :set_practice_locale, only: [:show, :edit, :update, :destroy]

  # GET /practice_locales
  # GET /practice_locales.json
  def index
    @practice_locales = PracticeLocale.all
  end

  # GET /practice_locales/1
  # GET /practice_locales/1.json
  def show
  end

  # GET /practice_locales/new
  def new
    @practice_locale = PracticeLocale.new
  end

  # GET /practice_locales/1/edit
  def edit
  end

  # POST /practice_locales
  # POST /practice_locales.json
  def create
    @practice_locale = PracticeLocale.new(practice_locale_params)

    respond_to do |format|
      if @practice_locale.save
        format.html { redirect_to @practice_locale, notice: 'Practice locale was successfully created.' }
        format.json { render :show, status: :created, location: @practice_locale }
      else
        format.html { render :new }
        format.json { render json: @practice_locale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practice_locales/1
  # PATCH/PUT /practice_locales/1.json
  def update
    respond_to do |format|
      if @practice_locale.update(practice_locale_params)
        format.html { redirect_to @practice_locale, notice: 'Practice locale was successfully updated.' }
        format.json { render :show, status: :ok, location: @practice_locale }
      else
        format.html { render :edit }
        format.json { render json: @practice_locale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_locales/1
  # DELETE /practice_locales/1.json
  def destroy
    @practice_locale.destroy
    respond_to do |format|
      format.html { redirect_to practice_locales_url, notice: 'Practice locale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice_locale
      @practice_locale = PracticeLocale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practice_locale_params
      params.require(:practice_locale).permit(:name, :address_id)
    end
end
