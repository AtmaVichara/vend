class DropMachineSnacks < ActiveRecord::Migration[5.1]
  def change
    drop_table :machine_snacks
  end
end
