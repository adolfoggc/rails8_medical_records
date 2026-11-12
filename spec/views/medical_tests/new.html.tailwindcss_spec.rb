require 'rails_helper'

RSpec.describe "medical_tests/new", type: :view do
  before(:each) do
    assign(:medical_test, MedicalTest.new(
      name: "MyString"
    ))
  end

  it "renders new medical_test form" do
    render

    assert_select "form[action=?][method=?]", medical_tests_path, "post" do

      assert_select "input[name=?]", "medical_test[name]"
    end
  end
end
