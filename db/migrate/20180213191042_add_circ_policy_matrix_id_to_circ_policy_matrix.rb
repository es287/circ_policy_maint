class AddCircPolicyMatrixIdToCircPolicyMatrix < ActiveRecord::Migration[5.0]
  def change
   add_column :circ_policy_matrices, :circ_policy_matrix_id, :integer
  end
end
