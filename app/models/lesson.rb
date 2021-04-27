class Lesson < ApplicationRecord
    self.table_name="lesson"
    belongs_to :course,foreign_key: :course_parent
end
