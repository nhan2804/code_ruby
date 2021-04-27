class CreateCateForums < ActiveRecord::Migration[6.1]
  def change
    create_table :cate_forums do |t|

      t.timestamps
    end
  end
end
