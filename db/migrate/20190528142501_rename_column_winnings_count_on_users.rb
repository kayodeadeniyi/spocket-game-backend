class RenameColumnWinningsCountOnUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column(:users, :winnings_count, :games_count)
  end
end
