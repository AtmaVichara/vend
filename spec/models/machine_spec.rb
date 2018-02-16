require 'rails_helper'

describe Machine, type: :model do
  describe "relationships" do
    it {should have_many(:snacks)}
  end
  describe "instance mehthods" do
    it "returns average price of snacks" do
      machine = create(:machine)
      snack = create(:snack, machine_id: machine.id, price: 2000)
      snack2 = create(:snack, machine_id: machine.id, price: 120)
      snack2 = create(:snack, machine_id: machine.id, price: 1000)

      expect(machine.average_price).to eq(1040)
    end
  end
end
