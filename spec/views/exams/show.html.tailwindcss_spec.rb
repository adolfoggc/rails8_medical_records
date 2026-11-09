require 'rails_helper'

RSpec.describe "exams/show", type: :view do
  before(:each) do
    assign(:exam, Exam.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
