class AlterUpdateAtColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :update_at, :updated_at
  end
end
