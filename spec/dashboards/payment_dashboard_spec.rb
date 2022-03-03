require "rails_helper"

describe PaymentDashboard do
  describe "#permitted_attributes" do
    context "when an action is passed" do
      it "returns the attributes for the action" do
        dashboard = PaymentDashboard.new
        expect(dashboard.permitted_attributes("edit")).to eq(["order_id"])
      end
    end

    it "returns the attribute name by default" do
      dashboard = PaymentDashboard.new

      expect(dashboard.permitted_attributes).to include(:id)
    end

    it "returns the attribute_id name for belongs_to relationships" do
      dashboard = PaymentDashboard.new

      expect(dashboard.permitted_attributes).to include("order_id")
    end
  end
end
