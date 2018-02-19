class ItemType < ApplicationRecord
  def self.options_for_select
    order('LOWER(item_type_name)').map { |e| [e.item_type_name, e.item_type_id] }
  end

end
