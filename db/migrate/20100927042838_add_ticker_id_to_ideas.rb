class AddTickerIdToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :ticker_id, :integer
  end

  def self.down
    remove_column :ideas, :ticker_id
  end
end
