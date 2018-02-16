require 'rails_helper'

describe Machine, type: :model do
  describe "relationships" do
    it {should have_many(:snacks).through(:snack_machines)}
  end
  describe "instance mehthods" do
    it "returns average price of snacks" do
      machine = create(:machine)
      snack = create(:snack, price: 2000)
      snack2 = create(:snack, price: 120)
      snack2 = create(:snack, price: 1000)

      expect(machine.average_price).to eq(1040)
    end
  end
end
