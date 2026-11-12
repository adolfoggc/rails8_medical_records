require 'rails_helper'

RSpec.describe "reference_ranges/show", type: :view do
  before(:each) do
    assign(:reference_range, ReferenceRange.create!(
      gender_related: 2,
      measure_unit: 3,
      reference: 4.5,
      medical_test: nil,
      min_age: 5,
      min_age_kind: 6,
      max_age: 7,
      max_age_kind: 8,
      risk_category: 9
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
  end
end
