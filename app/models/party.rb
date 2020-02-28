class Party < ApplicationRecord
  default_scope { order(party_number: :asc) }
  has_many :subjects
end
