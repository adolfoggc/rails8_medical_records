class MedicalTestsController < ApplicationController
  before_action :set_medical_test, only: %i[ show edit update destroy ]

  # GET /medical_tests or /medical_tests.json
  def index
    @medical_tests = MedicalTest.all
  end

  # GET /medical_tests/1 or /medical_tests/1.json
  def show
  end

  # GET /medical_tests/new
  def new
    @medical_test = MedicalTest.new
  end

  # GET /medical_tests/1/edit
  def edit
  end

  # POST /medical_tests or /medical_tests.json
  def create
    @medical_test = MedicalTest.new(medical_test_params)

    respond_to do |format|
      if @medical_test.save
        format.html { redirect_to @medical_test, notice: "Medical test was successfully created." }
        format.json { render :show, status: :created, location: @medical_test }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @medical_test.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /medical_tests/1 or /medical_tests/1.json
  def update
    respond_to do |format|
      if @medical_test.update(medical_test_params)
        format.html { redirect_to @medical_test, notice: "Medical test was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @medical_test }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @medical_test.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /medical_tests/1 or /medical_tests/1.json
  def destroy
    @medical_test.destroy!

    respond_to do |format|
      format.html { redirect_to medical_tests_path, notice: "Medical test was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_test
      @medical_test = MedicalTest.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def medical_test_params
      params.expect(medical_test: [ :name ])
    end
end
