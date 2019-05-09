class AddCommentsAllowedToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :comments_allowed, :boolean
  end
end
