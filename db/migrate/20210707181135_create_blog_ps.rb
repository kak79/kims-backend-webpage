class CreateBlogPs < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_ps do |t|
      t.integer :blog_id

      t.timestamps
    end
  end
end
