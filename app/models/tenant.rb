class Tenant < ApplicationRecord
  has_many :domains
  belongs_to :design_theme
end
