class CreateWeddingGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :wedding_guests do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.boolean :accepted
      t.text :comment

      t.timestamps
    end
  end
end
