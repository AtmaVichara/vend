class Snack < ApplicationRecord
  has_many :snack_machines
  has_many :machines, through: :snack_machines

  def save_machines(vending_machine)
    machines << vending_machines
  end
end
