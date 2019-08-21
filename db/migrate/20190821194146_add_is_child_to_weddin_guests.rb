class AddIsChildToWeddinGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :wedding_guests, :is_child, :boolean
  end
end
