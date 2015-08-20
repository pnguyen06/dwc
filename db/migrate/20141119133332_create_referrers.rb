class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.string :email
      t.integer :referrals
      t.boolean :breakroom

      t.timestamps
    end
  end
end
