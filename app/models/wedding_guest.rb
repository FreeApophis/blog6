class WeddingGuest < ApplicationRecord
  belongs_to :wedding_group

  scope :children, -> { where(is_child: true) }
  scope :adults, -> { where(is_child: false) }
end
