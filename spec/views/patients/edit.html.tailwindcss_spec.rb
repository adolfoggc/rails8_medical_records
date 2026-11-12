require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  let(:patient) {
    Patient.create!(
      name: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:patient, patient)
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(patient), "post" do
      assert_select "input[name=?]", "patient[name]"

      assert_select "input[name=?]", "patient[email]"
    end
  end
end
