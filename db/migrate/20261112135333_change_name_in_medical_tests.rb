class ChangeNameInMedicalTests < ActiveRecord::Migration[8.1]
  def up
    add_index :medical_tests, :name, unique: true
  end

  def down
    remove_index :medical_tests, :name
  end
end
