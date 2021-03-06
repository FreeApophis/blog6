class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string :key
      t.text :value
      t.references :tenant

      t.timestamps
    end
    add_index :settings, :key
  end
end
