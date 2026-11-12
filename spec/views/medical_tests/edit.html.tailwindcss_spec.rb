require 'rails_helper'

RSpec.describe "medical_tests/edit", type: :view do
  let(:medical_test) {
    MedicalTest.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:medical_test, medical_test)
  end

  it "renders the edit medical_test form" do
    render

    assert_select "form[action=?][method=?]", medical_test_path(medical_test), "post" do

      assert_select "input[name=?]", "medical_test[name]"
    end
  end
end
