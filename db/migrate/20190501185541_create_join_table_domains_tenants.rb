class CreateJoinTableDomainsTenants < ActiveRecord::Migration[6.0]
  def change
    create_join_table :domains, :tenants do |t|
      t.index [:domain_id, :tenant_id]
      t.index [:tenant_id, :domain_id]
    end
  end
end
