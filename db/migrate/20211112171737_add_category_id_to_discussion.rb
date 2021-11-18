class AddCategoryIdToDiscussion < ActiveRecord::Migration[6.1]
  def change
    add_column :discussions, :caegory_id, :bigint
  end
end
