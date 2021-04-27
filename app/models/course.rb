class Course < ApplicationRecord
    self.table_name = "course"
    belongs_to :cate_course,foreign_key: :cate_parent
    has_many :lesson,
    primary_key: :id_course, 
    foreign_key: :course_parent
end
