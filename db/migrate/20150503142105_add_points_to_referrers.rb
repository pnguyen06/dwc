class AddPointsToReferrers < ActiveRecord::Migration
  def change
    add_column :referrers, :points, :integer
  end
end
