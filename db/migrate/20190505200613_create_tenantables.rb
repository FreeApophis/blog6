class CreateTenantables < ActiveRecord::Migration[6.0]
  def change
    create_table :tenantables do |t|
      t.references :tenant, null: false, foreign_key: true
      t.references :tenantable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
