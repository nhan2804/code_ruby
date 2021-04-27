class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|

      t.timestamps
    end
  end
end
