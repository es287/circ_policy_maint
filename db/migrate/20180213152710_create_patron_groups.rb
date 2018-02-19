class CreatePatronGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :patron_groups do |t|
      t.integer :patron_group_id
      t.string :patron_group_code
      t.string :patron_group_name
      t.string :patron_group_display

      t.timestamps
    end
  end
end
