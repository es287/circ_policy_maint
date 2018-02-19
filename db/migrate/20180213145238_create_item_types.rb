class CreateItemTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :item_types do |t|
      t.integer :item_type_id
      t.string :item_type_code
      t.string :item_type_name
      t.string :item_type_display

      t.timestamps
    end
  end
end
