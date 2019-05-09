class Page < ApplicationRecord
  include HasTenants

  extend FriendlyId
  friendly_id :title, :use => :history

  has_rich_text :content
end
