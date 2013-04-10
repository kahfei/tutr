class ChangeFeeToTotalInStudent < ActiveRecord::Migration
  def self.up
  	rename_column :students, :fee, :total_fee
  end

  def down
  end
end
