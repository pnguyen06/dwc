class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.date :date
      t.string :title
      t.text :code

      t.timestamps
    end
  end
end
