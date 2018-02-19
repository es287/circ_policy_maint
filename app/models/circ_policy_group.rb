class CircPolicyGroup < ApplicationRecord
  def self.options_for_select
    order('LOWER(circ_group_name)').map { |e| [e.circ_group_name, e.circ_group_id] }
  end
end
