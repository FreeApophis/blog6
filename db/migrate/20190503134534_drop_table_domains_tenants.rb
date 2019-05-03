class DropTableDomainsTenants < ActiveRecord::Migration[6.0]
  def change
    drop_table :domains_tenants
    add_reference :domains, :tenant, index: true
  end
end
