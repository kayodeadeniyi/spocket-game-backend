class AddDefaultValueToGamesCount < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :games_count, :integer, default: 0
  end
end
