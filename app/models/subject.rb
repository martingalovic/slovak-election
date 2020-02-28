class Subject < ApplicationRecord
  default_scope { order(ballot_position: :asc) }
  belongs_to :party

  def full_name
    [first_name, last_name].join(' ')
  end
end
