class ReferenceValuesController < ApplicationController
  before_action :set_reference_value, only: %i[ show edit update destroy ]

  # GET /reference_values or /reference_values.json
  def index
    @reference_values = ReferenceValue.all
  end

  # GET /reference_values/1 or /reference_values/1.json
  def show
  end

  # GET /reference_values/new
  def new
    @reference_value = ReferenceValue.new
  end

  # GET /reference_values/1/edit
  def edit
  end

  # POST /reference_values or /reference_values.json
  def create
    @reference_value = ReferenceValue.new(reference_value_params)

    respond_to do |format|
      if @reference_value.save
        format.html { redirect_to @reference_value, notice: "Reference value was successfully created." }
        format.json { render :show, status: :created, location: @reference_value }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @reference_value.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /reference_values/1 or /reference_values/1.json
  def update
    respond_to do |format|
      if @reference_value.update(reference_value_params)
        format.html { redirect_to @reference_value, notice: "Reference value was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @reference_value }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @reference_value.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /reference_values/1 or /reference_values/1.json
  def destroy
    @reference_value.destroy!

    respond_to do |format|
      format.html { redirect_to reference_values_path, notice: "Reference value was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_value
      @reference_value = ReferenceValue.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def reference_value_params
      params.expect(reference_value: [ :gender_related, :measure_unit, :value, :exam_id, :min_age, :min_age_kind, :max_age, :max_age_kind, :risk_category ])
    end
end
