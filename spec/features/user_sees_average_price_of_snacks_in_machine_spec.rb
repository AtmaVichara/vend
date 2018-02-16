require 'rails_helper'

describe "user sees average price of snacks in machine" do
  context "from machine show page" do
    it "show average price" do
      machine = create(:machine)
      snack = create(:snack, machine_id: machine.id, price: 2000)
      snack2 = create(:snack, machine_id: machine.id, price: 120)
      snack2 = create(:snack, machine_id: machine.id, price: 1000)

      visit machine_path(machine)

      expect(page).to have_content(machine.average_price)
    end
  end
end
