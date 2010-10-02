class AddStockIdToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :stock_id, :integer
  end

  def self.down
    remove_column :ideas, :stock_id
  end
end
