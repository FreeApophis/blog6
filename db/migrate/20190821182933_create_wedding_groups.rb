class CreateWeddingGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :wedding_groups do |t|
      t.string :name
      t.string :password

      t.timestamps
    end

    remove_reference :wedding_guests, :user, index: true, foreign_key: true
    add_reference :wedding_guests, :wedding_group, index: true, foreign_key: true
  end
end
