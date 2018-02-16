require 'rails_helper'

describe "a user sees all snacks and prices" do
  context "at the vending machine page" do
    it "shows all snacks and prices" do
      owner = create(:owner)
      machine = create(:machine, owner_id: owner.id)
      snack = create_list(:snack, 3)
      snack_machine = SnackMachine.create(machine_id: machine.id, snack_id: snack.id)

      visit machine_path(machine)

      expect(page).to have_content(snack[0].name)
      expect(page).to have_content(snack[0].price)
      expect(page).to have_content(snack[1].name)
      expect(page).to have_content(snack[1].price)
      expect(page).to have_content(snack[2].name)
      expect(page).to have_content(snack[2].price)
    end
  end
end
