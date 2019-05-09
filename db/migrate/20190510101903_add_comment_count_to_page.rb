class AddCommentCountToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :comments_count, :integer, null: false, default: 0
  end
end
