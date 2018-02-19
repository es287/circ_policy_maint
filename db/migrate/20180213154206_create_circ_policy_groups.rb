class CreateCircPolicyGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :circ_policy_groups do |t|
      t.integer :circ_group_id
      t.string :circ_group_name

      t.timestamps
    end
  end
end
