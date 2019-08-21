class AddCommentToWeddingGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :wedding_groups, :comment, :text
  end
end
