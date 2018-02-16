require 'rails_helper'

describe "user can see snack show page" do
  context "from snack show page" do
    it "show snacks info" do
      owner = create(:owner)
      machine = create(:machine, owner_id: owner.id)
      machine2 = create(:machine, owner_id: owner.id)
      machine3 = create(:machine, owner_id: owner.id)
      snack = create(:snack)
      snack.machines = [machine, machine2, machine3]

      visit snack_path(snack)

      expect(page).to have_content(snack.name)
      expect(page).to have_content(snack.price)
      expect(page).to have_content(machine.location)
      expect(page).to have_content(machine2.location)
      expect(page).to have_content(machine3.location)
    end
  end
end
