require 'rails_helper'

RSpec.describe "reference_values/index", type: :view do
  before(:each) do
    assign(:reference_values, [
      ReferenceValue.create!(
        gender_related: 2,
        measure_unit: 3,
        value: 4.5,
        exam: nil,
        min_age: 5,
        min_age_kind: 6,
        max_age: 7,
        max_age_kind: 8,
        risk_category: 9
      ),
      ReferenceValue.create!(
        gender_related: 2,
        measure_unit: 3,
        value: 4.5,
        exam: nil,
        min_age: 5,
        min_age_kind: 6,
        max_age: 7,
        max_age_kind: 8,
        risk_category: 9
      )
    ])
  end

  it "renders a list of reference_values" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
  end
end
