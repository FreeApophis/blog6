class WeddingGroup < ApplicationRecord
  has_many :wedding_guests

  accepts_nested_attributes_for :wedding_guests
end
