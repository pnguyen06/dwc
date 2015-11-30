class AddCoolToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :cool, :integer
  end
end
