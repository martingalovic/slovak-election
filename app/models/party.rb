class Party < ApplicationRecord
  default_scope { order(abbrevation: :asc) }
  has_many :subjects
end
