class MedicationsController < ApplicationController
  before_action :set_medication, only: [:show, :update, :destroy]

  # GET /medications
  # GET /medications.json
  def index
    @medications = Medication.all

    render json: @medications
  end

  # GET /medications/1
  # GET /medications/1.json
  def show
    render json: @medication
  end

  # POST /medications
  # POST /medications.json
  def create
    @medication = Medication.new(medication_params)

    if @medication.save
      render json: @medication, status: :created, location: @medication
    else
      render json: @medication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medications/1
  # PATCH/PUT /medications/1.json
  def update
    @medication = Medication.find(params[:id])

    if @medication.update(medication_params)
      head :no_content
    else
      render json: @medication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medications/1
  # DELETE /medications/1.json
  def destroy
    @medication.destroy

    head :no_content
  end

  private

    def set_medication
      @medication = Medication.find(params[:id])
    end

    def medication_params
      params.require(:medication).permit(:name, :description, :product_id, :last_opened, :openinterval, :user_id, :open_alert, :reminder_on)
    end
end
