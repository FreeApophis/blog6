class CreateDesignThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :design_themes do |t|
      t.string :name

      t.timestamps
    end
  end
end
