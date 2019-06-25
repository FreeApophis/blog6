class AddTitleAndTaglineToTenant < ActiveRecord::Migration[6.0]
  def change
    add_column :tenants, :title , :string
    add_column :tenants, :tag_line , :string
  end
end
