require 'rails_helper'

describe "user sees average price of snacks in machine" do
  context "from machine show page" do
    it "show average price" do
      machine = create(:machine)
      snack = create(:snack, price: 2000)
      snack2 = create(:snack, price: 120)
      snack3 = create(:snack, price: 1000)

      machine.snacks = [snack, snack2, snack3]

      visit machine_path(machine)

      expect(page).to have_content(machine.average_price)
    end
  end
end
