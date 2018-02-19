class CreateCircPolicyMatrix < ActiveRecord::Migration[5.0]
  def change
    create_table :circ_policy_matrices do |t|
     t.references :circ_group
     t.references :patron_group
     t.references :item_type
     t.string :charge_renew
     t.string :place_recall
     t.string :place_hold
     t.string :place_call_slip
     t.string :loan_interval	
     t.integer :loan_period
    end
  end
end
