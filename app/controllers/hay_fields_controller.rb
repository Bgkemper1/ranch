class HayFieldsController < ApplicationController
  before_action :set_hay_field, only: [:show, :edit, :update, :destroy]

  # GET /hay_fields
  # GET /hay_fields.json
  def index
    @hay_fields = HayField.all
  end

  def configure
  end
  # GET /hay_fields/1
  # GET /hay_fields/1.json
  def show
  end

  # GET /hay_fields/new
  def new
    @hay_field = HayField.new
  end

  # GET /hay_fields/1/edit
  def edit
  end

  # POST /hay_fields
  # POST /hay_fields.json
  def create
    @hay_field = HayField.new(hay_field_params)

    respond_to do |format|
      if @hay_field.save
        format.html { redirect_to @hay_field, notice: 'Hay field was successfully created.' }
        format.json { render :show, status: :created, location: @hay_field }
      else
        format.html { render :new }
        format.json { render json: @hay_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hay_fields/1
  # PATCH/PUT /hay_fields/1.json
  def update
    respond_to do |format|
      if @hay_field.update(hay_field_params)
        format.html { redirect_to @hay_field, notice: 'Hay field was successfully updated.' }
        format.json { render :show, status: :ok, location: @hay_field }
      else
        format.html { render :edit }
        format.json { render json: @hay_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hay_fields/1
  # DELETE /hay_fields/1.json
  def destroy
    @hay_field.destroy
    respond_to do |format|
      format.html { redirect_to hay_fields_url, notice: 'Hay field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hay_field
      @hay_field = HayField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hay_field_params
      params.require(:hay_field).permit(:field_name, :bail_count)
    end
end
