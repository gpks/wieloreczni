class ChangeColumnNameFromTypeToGenre < ActiveRecord::Migration
  def change
    rename_column :games, :type, :genre
  end
end
