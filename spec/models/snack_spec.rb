require 'rails_helper'

RSpec.describe Snack, type: :model do
  describe "relationships" do
    it {should belong_to(:machine)}
  end 
end
