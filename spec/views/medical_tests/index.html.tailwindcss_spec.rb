require 'rails_helper'

RSpec.describe "medical_tests/index", type: :view do
  before(:each) do
    assign(:medical_tests, [
      MedicalTest.create!(
        name: "Name"
      ),
      MedicalTest.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of medical_tests" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
