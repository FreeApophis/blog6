class AddReferenceToDesignThemeInTenant < ActiveRecord::Migration[6.0]
  def change
    add_reference :tenants, :design_theme, index: true
  end
end
