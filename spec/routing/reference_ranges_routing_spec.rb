require "rails_helper"

RSpec.describe ReferenceRangesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reference_ranges").to route_to("reference_ranges#index")
    end

    it "routes to #new" do
      expect(get: "/reference_ranges/new").to route_to("reference_ranges#new")
    end

    it "routes to #show" do
      expect(get: "/reference_ranges/1").to route_to("reference_ranges#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/reference_ranges/1/edit").to route_to("reference_ranges#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reference_ranges").to route_to("reference_ranges#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reference_ranges/1").to route_to("reference_ranges#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reference_ranges/1").to route_to("reference_ranges#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reference_ranges/1").to route_to("reference_ranges#destroy", id: "1")
    end
  end
end
