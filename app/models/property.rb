class Property < ApplicationRecord
  belongs_to :user
  has_one :owner
  has_one :area
end
