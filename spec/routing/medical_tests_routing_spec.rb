require "rails_helper"

RSpec.describe MedicalTestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/medical_tests").to route_to("medical_tests#index")
    end

    it "routes to #new" do
      expect(get: "/medical_tests/new").to route_to("medical_tests#new")
    end

    it "routes to #show" do
      expect(get: "/medical_tests/1").to route_to("medical_tests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/medical_tests/1/edit").to route_to("medical_tests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/medical_tests").to route_to("medical_tests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/medical_tests/1").to route_to("medical_tests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/medical_tests/1").to route_to("medical_tests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/medical_tests/1").to route_to("medical_tests#destroy", id: "1")
    end
  end
end
