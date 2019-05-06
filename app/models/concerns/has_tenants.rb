module HasTenants
  extend ActiveSupport::Concern

  include ActionView::Helpers

  included do
    has_many :tenantables, as: :tenantable
    has_many :tenants, through: :tenantables

    scope :by_tenant, lambda{ |tenant| BlogPost.joins(:tenantables).where(tenantables: {tenant_id: tenant.id}) }
  end
end


