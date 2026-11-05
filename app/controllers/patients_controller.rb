class PatientsController < ApplicationController
  layout "dashboard"
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /patients or /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1 or /patients/1.json
  def show
    @patient_age = '123'
    current_patient_age = @patient.age
    @patient_age = ""
    @patient_age += "#{current_patient_age[:years]} years" if current_patient_age[:years] > 0
    @patient_age += ", " if (current_patient_age[:months] > 0 || current_patient_age[:days] > 0) 
    @patient_age += "#{current_patient_age[:months]} months" if current_patient_age[:months] > 0
    @patient_age += " and " if current_patient_age[:days] > 0 && (current_patient_age[:months] > 0 || current_patient_age[:years] > 0)
    @patient_age += "#{current_patient_age[:days]} days" if current_patient_age[:days] > 0 
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients or /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @patient.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: "Patient was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @patient.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    @patient.destroy!

    respond_to do |format|
      format.html { redirect_to patients_path, notice: "Patient was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.expect(patient: [ :name, :email, :birthday ])
    end
end
