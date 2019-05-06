module HasTenants
  extend ActiveSupport::Concern

  included do
    has_many :tenantables, as: :tenantable
    has_many :tenants, through: :tenantables
  end
end


