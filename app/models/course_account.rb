class CourseAccount < ApplicationRecord
    self.table_name="account_course"
    # belongs_to :account,foreign_key: :id_auth
end
