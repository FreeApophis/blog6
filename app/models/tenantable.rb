class Tenantable < ApplicationRecord
  belongs_to :tenant
  belongs_to :tenantable
end
