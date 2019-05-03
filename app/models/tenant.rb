class Tenant < ApplicationRecord
  has_many :domains
end
