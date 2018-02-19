class CircPolicyMatrix < ApplicationRecord
  paginates_per 50

 filterrific( available_filters:  [ :with_cpg_id , :with_pg_id, :with_it_id] )

  scope :with_cpg_id, lambda { |cpg_ids|
    where(:circ_group_id => [*cpg_ids])
  }

  scope :with_pg_id, lambda { |pg_ids|
    where(:patron_group_id => [*pg_ids])
  }

  scope :with_it_id, lambda { |it_ids|
    where(:item_type_id => [*it_ids])
  }
end
