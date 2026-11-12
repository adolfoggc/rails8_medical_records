require 'rails_helper'

RSpec.describe "reference_ranges/new", type: :view do
  before(:each) do
    assign(:reference_range, ReferenceRange.new(
      gender_related: 1,
      measure_unit: 1,
      reference: 1.5,
      medical_test: nil,
      min_age: 1,
      min_age_kind: 1,
      max_age: 1,
      max_age_kind: 1,
      risk_category: 1
    ))
  end

  it "renders new reference_range form" do
    render

    assert_select "form[action=?][method=?]", reference_ranges_path, "post" do

      assert_select "input[name=?]", "reference_range[gender_related]"

      assert_select "input[name=?]", "reference_range[measure_unit]"

      assert_select "input[name=?]", "reference_range[reference]"

      assert_select "input[name=?]", "reference_range[medical_test_id]"

      assert_select "input[name=?]", "reference_range[min_age]"

      assert_select "input[name=?]", "reference_range[min_age_kind]"

      assert_select "input[name=?]", "reference_range[max_age]"

      assert_select "input[name=?]", "reference_range[max_age_kind]"

      assert_select "input[name=?]", "reference_range[risk_category]"
    end
  end
end
