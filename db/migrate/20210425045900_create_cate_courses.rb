class CreateCateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :cate_courses do |t|

      t.timestamps
    end
  end
end
