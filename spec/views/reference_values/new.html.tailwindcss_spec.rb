require 'rails_helper'

RSpec.describe "reference_values/new", type: :view do
  before(:each) do
    assign(:reference_value, ReferenceValue.new(
      gender_related: 1,
      measure_unit: 1,
      value: 1.5,
      exam: nil,
      min_age: 1,
      min_age_kind: 1,
      max_age: 1,
      max_age_kind: 1,
      risk_category: 1
    ))
  end

  it "renders new reference_value form" do
    render

    assert_select "form[action=?][method=?]", reference_values_path, "post" do

      assert_select "input[name=?]", "reference_value[gender_related]"

      assert_select "input[name=?]", "reference_value[measure_unit]"

      assert_select "input[name=?]", "reference_value[value]"

      assert_select "input[name=?]", "reference_value[exam_id]"

      assert_select "input[name=?]", "reference_value[min_age]"

      assert_select "input[name=?]", "reference_value[min_age_kind]"

      assert_select "input[name=?]", "reference_value[max_age]"

      assert_select "input[name=?]", "reference_value[max_age_kind]"

      assert_select "input[name=?]", "reference_value[risk_category]"
    end
  end
end
