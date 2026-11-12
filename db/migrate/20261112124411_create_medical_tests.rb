class CreateMedicalTests < ActiveRecord::Migration[8.1]
  def change
    create_table :medical_tests do |t|
      t.string :name

      t.timestamps
    end
  end
end
