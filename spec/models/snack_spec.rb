require 'rails_helper'

RSpec.describe Snack, type: :model do
  describe "relationships" do
    it {should belong_to(:machine).through(:snack_machines)}
  end
end
