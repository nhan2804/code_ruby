class CreateCourseAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :course_accounts do |t|

      t.timestamps
    end
  end
end
