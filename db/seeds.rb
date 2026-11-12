# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
{ "High-Sensitivity Troponin I": "Diagnosis of Myocardial Infarction (Heart Attack)",
  "TSH": "This hormone acts as a Feedback Loop: low TSH means that Thyroid needs to work harder and too much TSH slows it down",
  "Insulin": "It acts as a key that opens the body's cells to allow the entry of glucose (blood sugar), converting it into energy or storing the excess for future use",
  "Hydroxyvitamin D": "It is used as the most accurate marker in blood tests to assess a person's vitamin D levels.",
  "NT - ProBNP": "It is released by the heart's ventricles into the bloodstream when there is pressure overload or muscle stretching (cardiac stress)." }.each do |k, v|
    mt = MedicalTest.where(name: k).first
    if mt
      mt.update(description: v)
    else
      MedicalTest.create(name: k, description: v)
    end
end

puts "Seed proccess completed"
