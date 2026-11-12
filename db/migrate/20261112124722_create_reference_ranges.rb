class CreateReferenceRanges < ActiveRecord::Migration[8.1]
  def change
    create_table :reference_ranges do |t|
      t.integer :gender_related
      t.integer :measure_unit
      t.float :reference
      t.references :medical_test, null: false, foreign_key: true
      t.integer :min_age
      t.integer :min_age_kind
      t.integer :max_age
      t.integer :max_age_kind
      t.integer :risk_category

      t.timestamps
    end
  end
end
