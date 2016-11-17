class HayBailsController < ApplicationController
  before_action :set_hay_bail, only: [:show, :edit, :update, :destroy]

  # GET /hay_bails
  # GET /hay_bails.json
  def index
    @hay_bails = HayBail.all
  end

  # GET /hay_bails/1
  # GET /hay_bails/1.json
  def show
  end

  # GET /hay_bails/new
  def new
    @hay_bail = HayBail.new
  end

  # GET /hay_bails/1/edit
  def edit
  end

  # POST /hay_bails
  # POST /hay_bails.json
  def create
    @hay_bail = HayBail.new(hay_bail_params)

    respond_to do |format|
      if @hay_bail.save
        format.html { redirect_to @hay_bail, notice: 'Hay bail was successfully created.' }
        format.json { render :show, status: :created, location: @hay_bail }
      else
        format.html { render :new }
        format.json { render json: @hay_bail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hay_bails/1
  # PATCH/PUT /hay_bails/1.json
  def update
    respond_to do |format|
      if @hay_bail.update(hay_bail_params)
        format.html { redirect_to @hay_bail, notice: 'Hay bail was successfully updated.' }
        format.json { render :show, status: :ok, location: @hay_bail }
      else
        format.html { render :edit }
        format.json { render json: @hay_bail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hay_bails/1
  # DELETE /hay_bails/1.json
  def destroy
    @hay_bail.destroy
    respond_to do |format|
      format.html { redirect_to hay_bails_url, notice: 'Hay bail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hay_bail
      @hay_bail = HayBail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hay_bail_params
      params.require(:hay_bail).permit(:field_name, :bail_count)
    end
end
