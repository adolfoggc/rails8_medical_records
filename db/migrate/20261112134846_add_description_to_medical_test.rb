class AddDescriptionToMedicalTest < ActiveRecord::Migration[8.1]
  def change
    add_column :medical_tests, :description, :text
  end
end
