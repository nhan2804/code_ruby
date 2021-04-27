class CreateCateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :cate_blogs do |t|

      t.timestamps
    end
  end
end
