class ChangeIdToString < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :id, :string
  end
end
