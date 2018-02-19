class PatronGroup < ApplicationRecord

  def self.options_for_select
    order('LOWER(patron_group_name)').map { |e| [e.patron_group_name, e.patron_group_id] }
  end

end
